STEP = 20
class Node:
    def __init__(self, id, occurance, parents, type, mode='F'):
        self.id = id
        self.occurance = occurance
        self.children = []
        self.parents = parents
        self.type = type
        self.cost = sum(i.cost for i in parents) + 1
        self.level =  max(i.level for i in parents) + 1 if parents else 0
        self.mode = mode
        self.liveness = ()

    def add_child(self, node):
        self.children.append(node)
    
    def is_address(self):
        return self.type == 'address'

    def is_forawrd(self):
        return self.mode == 'F'

    def is_reverse(self):
        return self.mode == 'R'

    def is_load(self):
        return self.type == 'load'

    def is_store(self):
        return self.type == 'store'

    def is_arithmetic(self):
        return 'arithmetic' in self.type
    
    def is_mem_op(self):
        return self.type == 'load' or self.type == 'store'

    def get_address(self):
        if self.is_load():
            return self.parents[-1].id
        elif self.is_store():
            return self.id
        return None

class Graph:
    def __init__(self, log_address, address_dir='addresses.txt'):
        self.log_address = log_address
        self.addr_file = open(address_dir, 'w') if log_address else None
        
        self.forward_arithmetic_count = 0
        self.reverse_arithmetic_count = 0
        self.forward_important_arithmetic_count = {'mul': 0, 'div': 0, 'or': 0}
        self.reverse_important_arithmetic_count = {'mul': 0, 'div': 0, 'or': 0}
        
        self.max_forward_level = 0
        self.max_reverse_level = 0

        self.forward_loads = 0
        self.forward_stores = 0
        self.reverse_loads = 0
        self.reverse_stores = 0
        
        self.forward_unique_address = {}
        self.reverse_unique_address = {}
        self.nodes = {}
        self.lives_per_level = {}
        self.children_per_level = {}
        self.insts_per_level = {}

        self.propagated_vars = {
            'add6_unwrap': 'add6',
            'div_unwrap': 'div',
        }

    def handle_arithmetic(self, node):
        if node.is_forawrd():
            self.forward_arithmetic_count += 1
            for i in self.forward_important_arithmetic_count:
                if i in node.type:
                    self.forward_important_arithmetic_count[i] += 1
                    break
        else:
            self.reverse_arithmetic_count += 1
            for i in self.reverse_important_arithmetic_count:
                if i in node.type:
                    self.reverse_important_arithmetic_count[i] += 1
                    break
        
            
    def handle_mem_op(self, node):
        if node.is_forawrd():
            if node.get_address() not in self.forward_unique_address:
                self.forward_unique_address[node.get_address()] = 1
            else:
                self.forward_unique_address[node.get_address()] += 1
        if node.is_reverse():
            if node.get_address() not in self.reverse_unique_address:
                self.reverse_unique_address[node.get_address()] = 1
            else:
                self.reverse_unique_address[node.get_address()] += 1
        
        if node.is_forawrd():
            if node.is_load():
                self.forward_loads += 1
            else:
                self.forward_stores += 1
        if node.is_reverse():
            if node.is_load():
                self.reverse_loads += 1
            else:
                self.reverse_stores += 1     

    def handle_max_level(self, node):
        if node.is_forawrd():
            if node.level > self.max_forward_level:
                self.max_forward_level = node.level
        elif node.is_reverse():
            if node.level > self.max_reverse_level:
                self.max_reverse_level = node.level

    def add_node(self, line):  # line format: "Mode_Node: id, Parent: , Parent: ..., Type"
        node_id = line.split(":")[1].split(",")[0].strip()
        if node_id in self.propagated_vars and self.propagated_vars[node_id] in self.nodes: # If this is an alias name
            return
        parents = []
        node_type = line.split(",")[-1].strip()
        mode = line.split("_")[0]
        for i in line.split(',')[1:-1]:
            if 'Parent' in i:
                parent_id = i.split(":")[1].strip()
                if parent_id in self.nodes:
                    parents.append(self.nodes[parent_id][-1])
                else:
                    parent_node = Node(parent_id, 0, [], "root")
                    self.nodes[parent_id] = [parent_node]
                    parents.append(parent_node)
        if node_type == 'store':
            if node_id in self.nodes:
                parents.append(self.nodes[node_id][-1])
        if not node_id in self.nodes:
            self.nodes[node_id] = []
        
        new_node = Node(node_id, len(self.nodes[node_id]), parents, node_type, mode)
        self.nodes[node_id].append(new_node)
        for i in parents:
            i.add_child(new_node)

        if new_node.is_arithmetic():
            self.handle_arithmetic(new_node)
        if new_node.is_mem_op():
            self.handle_mem_op(new_node)
        self.handle_max_level(new_node)
        if self.log_address and new_node.is_mem_op():
            self.addr_file.write(mode + '_' + new_node.get_address() + '\n')
        if new_node.level not in self.insts_per_level:
            self.insts_per_level[new_node.level] = 1
        else:
            self.insts_per_level[new_node.level] += 1

    def update_lives_per_level(self, node):
        for i in range(node.liveness[0], node.liveness[1] + 1):
            if i not in self.lives_per_level:
                self.lives_per_level[i] = 1
            else:
                self.lives_per_level[i] += 1

    def calc_max_liveness(self, restrict_mode_to=None):
        for node_id in self.nodes:         
            node_vector = self.nodes[node_id]
            if restrict_mode_to is None or node_vector[-1].mode == restrict_mode_to:
                for node in node_vector:
                    start = node.level
                    end = node.level+1
                    for child in node.children:
                        if restrict_mode_to is None or child.mode == restrict_mode_to:
                            if end < child.level:
                                end = child.level
                    node.liveness = (start, end)
                    self.update_lives_per_level(node)
    
    def calc_values_produced_per_level(self, restrict_mode_to=None):
        for node_id in self.nodes:
            node_vector = self.nodes[node_id]
            if restrict_mode_to is None or node_vector[-1].mode == restrict_mode_to:
                for node in node_vector:
                    if node.level not in self.children_per_level:
                        self.children_per_level[node.level] = 0
                    if restrict_mode_to is None:
                        self.children_per_level[node.level] += len(node.children)
                    else:
                        self.children_per_level[node.level] += len([i for i in node.children if i.mode == restrict_mode_to])
                        
    def print_lives_per_level(self):
        self.calc_max_liveness()
        start = 0
        end_level = max(self.max_reverse_level, self.max_forward_level)
        while(True):
            sum_lives = 0
            for j in range(start, start + STEP):
                if j > end_level:
                    break
                sum_lives += self.lives_per_level[j]
            print("Levels: {} - {}, AVG Lives: {}".format(start, min(start + STEP, end_level), sum_lives/STEP))
            start += STEP
            if start > end_level:
                break   
    def print_children_per_level(self, restrict_mode_to=None):
        self.calc_values_produced_per_level(restrict_mode_to)
        start = 0
        end_level = max(self.max_reverse_level, self.max_forward_level)
        while(True):
            sum_children = 0
            sum_insts = 0
            for j in range(start, start + STEP):
                if j > end_level:
                    break
                if j not in self.children_per_level:
                    continue
                sum_children += self.children_per_level[j]
                sum_insts += self.insts_per_level[j]
        
            print("Levels: {} - {}, AVG Children: {}, AVG Insts:{}, AVG Children per Inst: {}".format(start, min(start + STEP, end_level), float(sum_children)/STEP, float(sum_insts)/STEP, float(sum_children)/sum_insts))
            start += STEP
            if start > end_level:
                break
    def print_mem_ops_log(self):
        print("Forward Loads: {}".format(self.forward_loads))
        print("Forward Stores: {}".format(self.forward_stores))
        print("Reverse Loads: {}".format(self.reverse_loads))
        print("Reverse Stores: {}".format(self.reverse_stores))
        print("Total Loads: {}".format(self.forward_loads + self.reverse_loads))
        print("Total Stores: {}".format(self.forward_stores + self.reverse_stores))
        print("Total Mem Ops: {}".format(self.forward_loads + self.forward_stores + self.reverse_loads + self.reverse_stores))

    def log_value_count_per_cycle_count(self): # Keeping n values for k cycles
        live_cycles = {} 
        for node_id in self.nodes:
            node_vector = self.nodes[node_id]
            for node in node_vector:
                cycles = node.liveness[1] - node.liveness[0]
                if cycles not in live_cycles:
                    live_cycles[cycles] = 0
                live_cycles[cycles] += 1
        live_cycles = {k: v for k, v in sorted(live_cycles.items(), key=lambda item: item[1], reverse=True)}
        index = 0
        for i in live_cycles:
            index += 1
            print("Keeping {} values for {} cycles.".format(live_cycles[i], i))
            if index == 10:
                break
    def print_arithmetic_log(self):
        total_arithmetic_count = self.forward_arithmetic_count + self.reverse_arithmetic_count
        forward_muls = self.forward_important_arithmetic_count['mul']
        forward_divs = self.forward_important_arithmetic_count['div']
        forward_ors = self.forward_important_arithmetic_count['or']

        reverse_muls = self.reverse_important_arithmetic_count['mul']
        reverse_divs = self.reverse_important_arithmetic_count['div']
        reverse_ors = self.reverse_important_arithmetic_count['or']

        total_mul_count = forward_muls + reverse_muls
        total_div_count = forward_divs + reverse_divs
        total_or_count = forward_ors + reverse_ors
        print("Forward unique addresses: {}, Reverse unique addresses: {}\
            \nTotal Arithmetic: {} (mul: {}, div: {}, or: {}), Forward Arithmetic: {} ({}, {}, {}), Reverse Arithmetic: {} ({}, {}, {})\
            \nMax Forward Level: {}, Max Reverse Level: {}"\
            .format(len(self.forward_unique_address), len(self.reverse_unique_address),\
                       total_arithmetic_count, total_mul_count, total_div_count, total_or_count,
                        self.forward_arithmetic_count, forward_muls, forward_divs, forward_ors,\
                        self.reverse_arithmetic_count, reverse_muls, reverse_divs, reverse_ors,  
                        self.max_forward_level, self.max_reverse_level))

    def print_log(self):
        print("--------------------------------\nArithmetic Ops")
        self.print_arithmetic_log()
        print("--------------------------------\nMem Ops Count")
        self.print_mem_ops_log()
        print("--------------------------------\nLives Level\n")
        self.print_lives_per_level()
        print("--------------------------------\nChildren Per Level\n")
        self.print_children_per_level()
        print("--------------------------------\nValue Count Per Cycle Count\n")
        self.log_value_count_per_cycle_count()