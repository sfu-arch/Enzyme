class LevelInfo:
    spill_count = 0
    total_regs = 0
    total_edges = 0

    @property
    def forward_node_count(self):
        return sum(1 if i.is_forward() else 0 for i in self.new_nodes)
        
    def __init__(self):
        self.new_nodes = []
        self.dead_nodes = []
        self.spills = []
    
    def add_new_node(self, node):
        if node not in self.new_nodes:
            self.new_nodes.append(node)
    
    def add_dead_node(self, node):
        if node not in self.dead_nodes:
            self.dead_nodes.append(node)

    def assign_registers(self, regfile, current_level, consider_edges=True, load_latency=0):
        for node in self.new_nodes:
            if regfile.has_free_register():
                regfile.allocate_register(node)
            else:
                candidate, next_use = regfile.get_eviction_candidate(current_level)
                if next_use > node.get_next_use(current_level, consider_edges):
                    self.spills.append(candidate)
                    regfile.replace_register(candidate, node)

                else:
                    self.spills.append(node)
                if load_latency:
                    spilled_node = self.spills[-1]
                    spilled_node.end_level = spilled_node.get_next_use(current_level, consider_edges) + load_latency
                LevelInfo.spill_count += 1

    def release_registers(self, regfile):
        for i in self.dead_nodes:
            regfile.release_register(i)