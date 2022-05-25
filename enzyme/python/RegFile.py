class RegisterFile:
    total_registers = 0
    def __init__(self, size) -> None:
        self.free_registers = list(range(size))
        self.allocated_registers = {}
    
    def release_register(self, node):
        if node in self.allocated_registers:
            self.free_registers.append(self.allocated_registers[node])
            del self.allocated_registers[node]

    def has_free_register(self):
        RegisterFile.total_registers += 1
        return len(self.free_registers) > 0

    def allocate_register(self, node):
        if not node in self.allocated_registers:
            self.allocated_registers[node] = self.free_registers.pop()
        
    def get_eviction_candidate(self, current_level):
        next_use_distance = 0
        eviction_candidate = None

        for node in self.allocated_registers:
            node_next_use = node.get_next_use(current_level)
            if node_next_use > next_use_distance:
                next_use_distance = node_next_use
                eviction_candidate = node
        
        return eviction_candidate, next_use_distance
    
    def replace_register(self, evict_node, new_node):
        self.allocated_registers[new_node] = self.allocated_registers[evict_node]
        del self.allocated_registers[evict_node]