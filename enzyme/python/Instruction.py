class Instruction:
    def __init__(self, id, type, inst_id, src1, src2=None, children=None):
        self.id = id
        self.type = type
        self.dst = inst_id
        self.src1 = src1
        self.src2 = src2
        self.children = sorted(children) if children else []
    
    def is_load(self):
        return 'load' in self.type
    
    def is_store(self):
        return 'store' in self.type

    def is_arithmetic(self):
        return 'arithmetic' in self.type
    
    def is_arg(self):
        return 'arg' in self.type
        
    def is_mem_op(self):
        return self.is_load() or self.is_store()
        
    def __str__(self):
        return f"{self.id} {self.dst} {self.src1} {self.src2}"