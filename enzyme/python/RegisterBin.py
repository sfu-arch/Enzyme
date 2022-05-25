from math import inf

class BinEntry:
    def __init__(self):
        self.dst = None
        self.children = []

    def is_free(self):
        return self.dst is None
    
    def has_further_use(self):
        return len(self.children) > 0
    
    def pop_child(self):
        return self.children.pop(0)
    
    def update(self, instruction_id, children):
        self.dst = instruction_id
        self.children = children if children else []

    def get_next_use(self):
        return self.children[0] if len(self.children) else inf

    def fast_forward(self, instruction_id=None):
        if instruction_id is None:
            return
        while self.children and self.children[0] < instruction_id:
            self.children.pop(0)

    def __str__(self):
        return f"{self.dst} {self.children}"

class RegisterBin:
    def __init__(self, name, size, log=False):
        self.name = name
        self.entries = [BinEntry() for i in range(size)]
        self.next_bin = None
        self.furthest_instruction_id = 0
        self.log = log

    def get_entry(self, instruction_id, dst_id=None):
        for entry in self.entries:
            entry.fast_forward(instruction_id)

        for entry in self.entries:
            if entry.dst == instruction_id:
                return entry
        if self.next_bin:
            entry = self.next_bin.get_entry(instruction_id, dst_id)
            if not entry:
                return None
            # curr_dst = entry.dst
            # curr_children = entry.children.copy()
            # # Remove the entry from the next bin
            # entry.dst = None
            # entry.children = []
            eviction_target = self.get_next_valid_entry()
            if not eviction_target.is_free() and eviction_target.has_further_use():
                if not self.spill_entry(eviction_target):
                    return None
                    
            eviction_target.update(entry.dst, entry.children.copy())

            return eviction_target
        elif self.log:
            print(f"{self.name} GET_ENTRY: No entry found for {instruction_id}")
        return None
        
    def add_entry(self, entry):
        target_entry = self.get_next_valid_entry()
        if not target_entry.is_free() and target_entry.has_further_use():
            if not self.spill_entry(target_entry):
                return False
        target_entry.update(entry.dst, entry.children.copy())        
        return True

    def spill_entry(self, entry):
        if not self.next_bin:
            print(f"{self.name}: No next bin to spill {entry.dst}!")
            print(entry.children)
            return False
        return self.next_bin.add_entry(entry)

    def get_next_valid_entry(self):
        furthest_entry = self.entries[0]
        furtherst_use = furthest_entry.get_next_use()

        for i in range(len(self.entries)):
            if self.entries[i].is_free():
                return self.entries[i]
            if self.entries[i].get_next_use() > furtherst_use:
                furthest_entry = self.entries[i]
                furtherst_use = self.entries[i].get_next_use()
        return furthest_entry

    def handle_instruction(self, instruction):
        if instruction.is_load():
            return self.handle_load(instruction)
        elif instruction.is_store():
            return self.handle_store(instruction)
        elif instruction.is_arg():
            return self.handle_arg(instruction)
        elif instruction.is_arithmetic():
            return self.handle_arithmetic(instruction)
        else:
            return self.handle_load(instruction)
            
    def handle_load(self, instruction): # Load: dst, address, children
        entry = self.get_next_valid_entry()
        if not entry.is_free() and entry.has_further_use():
            if not self.spill_entry(entry):
                return False
        entry.update(instruction.dst, instruction.children.copy())
        return True

    def handle_store(self, instruction):
        entry = self.get_entry(instruction.src1, instruction.dst)
        if not entry:
            return False
        entry.pop_child()
        return True
    
    def handle_arg(self, instruction):
        return self.handle_load(instruction)

    def handle_arithmetic(self, instruction):
        if instruction.dst == 8561:
            print(f"{self.name}: {instruction}")
        entry1 = self.get_entry(instruction.src1, instruction.dst)
        if not entry1:
            return self.handle_load(instruction)
        entry1.pop_child()
        if instruction.src2:
            entry2 = self.get_entry(instruction.src2, instruction.dst)
            if not entry2:
                return False
            if entry2.children == [] and self.log:
                print(f"{self.name}: {instruction} {entry2} has no children")
            else:
                entry2.pop_child()
        dst_entry = self.get_next_valid_entry()
        if not dst_entry.is_free() and dst_entry.has_further_use():
            if not self.spill_entry(dst_entry):
                return False
        dst_entry.update(instruction.dst, instruction.children.copy())

        return True