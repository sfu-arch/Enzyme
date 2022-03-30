from turtle import update


dir = '../build/1.txt'
file = open(dir)
class Operation:
    def __init__(self, line):
        self.tag = line.split(',')[0]
        self.type = line.split("#")[1].split('_')[0]
        self.loop_id = -1 if 'LoopId' not in line else int(line.split(',')[4])
        self.id = int(line.split('_')[1].split(',')[0])
        self.address = line.split(',')[1]
        self.mode = line.split(',')[2].strip()
        
    def is_load(self):
        return self.type == 'LOAD'
    def is_store(self):
        return self.type == 'STORE'
    def is_in_loop(self):
        return self.loop_id != -1
    def is_forward(self):
        return self.mode == 'FORWARD'
    def is_reverse(self):
        return self.mode == 'REVERSE'

addresses = {}
loop_index = {}
loop_tag = {}

def update_loop(op):
    loop_id = op.loop_id
    if loop_id not in loop_tag:
        loop_tag[loop_id] = op.tag
        loop_index[loop_id] = 1
    elif loop_id in loop_tag and loop_tag[loop_id] == op.tag:
        loop_index[loop_id] += 1

dependencies = 0
independents = {}
for line in file:
    if line[0] == '#':
        op = Operation(line)
        if not op.is_in_loop():
            continue
        update_loop(op)
        if op.is_store():
            addresses[op.address] = loop_index[op.loop_id]
        if op.is_load():
            if op.address in addresses:
                if op.address in independents: 
                    independents[op.address] = 0
                dependencies += 1
                addresses.__delitem__(op.address)
            elif op.address in independents:
                independents[op.address] += 1
            else:
                independents[op.address] = 1
print(dependencies)