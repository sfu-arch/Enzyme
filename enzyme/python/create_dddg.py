LOG_ADDRESS = True
ADDRESS_DIR = 'addresses.txt'
addr_file = open(ADDRESS_DIR, 'w')

def is_mem_op(node_type):
    return node_type == 'load' or node_type == 'store'

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

    def get_address(self):
        if self.is_load():
            return self.parents[-1].id
        elif self.is_store():
            return self.id
        return None

class Graph:
    def __init__(self):
        self.nodes = {}
    
    def add_node(self, line):  # line format: "Mode_Node: id, Parent: , Parent: ..., Type"
        node_id = line.split(":")[1].split(",")[0].strip()
        parents = []
        node_type = line.split(",")[-1].strip()
        mode = line.split("_")[0]
        for i in line.split(',')[1:-1]:
            if 'Parent' in i:
                parent_id = i.split(":")[1].strip()
                if parent_id in self.nodes:
                    parents.append(self.nodes[parent_id][-1])
                else:
                    parents.append(Node(parent_id, 0, [], "root"))

        if not node_id in self.nodes:
            self.nodes[node_id] = []
        new_node = Node(node_id, len(self.nodes[node_id]), parents, node_type, mode)
        self.nodes[node_id].append(new_node)
        for i in parents:
            i.add_child(self.nodes[node_id][-1])

        if LOG_ADDRESS and is_mem_op(node_type):
            addr_file.write(new_node.get_address() + '\n')
                
dir = '../build/1.txt'
file = open(dir, 'r')
graph = Graph()
for line in file:
    if 'Node' in line:
        graph.add_node(line)

for i in graph.nodes:
    print("Node id: {}, occurances: {}, type: {}, max_level: {}".format(i, len(graph.nodes[i]), graph.nodes[i][-1].type, graph.nodes[i][-1].level))