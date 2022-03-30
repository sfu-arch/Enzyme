dir = '../build/1.txt'

file = open(dir, 'r')
class ArithmeticOP:
    def __init__(self, line):
        self.child = line.split(',')[0].split(':')[1].strip()
        self.parent = line.split(',')[1].strip()
        self.op_index = line.split(',')[2].strip()
        self.line = line
target_ops = {
    'mat': 0,
    'vec':0,
    'm0diffe': 0,
    'm0diffe11' : 0,
    'm1diffe': 0,
    'm0diffemul23': 0,
    'm0diffe14': 0,
    'm0diffe15': 0,
}

for line in file:
    if line[0] != '-':
        continue
    op = ArithmeticOP(line)
    if op.parent in target_ops:
        target_ops[op.parent] = op.op_index

for key in target_ops:
    print("{} {}".format(key, target_ops[key]))