from pickle import FALSE
from Graph import Graph
from RegisterBin import RegisterBin

WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 16
ARITHMETIC_ONLY = True

LOG_ADDRESS = True
ADDRESS_DIR = 'addresses.txt'
LIVE_VAR_DIR = '../build/live_vars.txt'
dir = '../build/1.txt'

# LIVE_VAR_DIR = '/localhome/mha157/Enzyme/enzyme/benchmarks/hand/live_vars.txt'
# dir = '/localhome/mha157/Enzyme/enzyme/benchmarks/hand/results.txt'

file = open(dir, 'r')
graph = Graph(WINDOW_SIZE, LOG_ADDRESS, ADDRESS_DIR, LIVE_VAR_DIR, REGFILE_SIZE, ALU_SIZE)
for line in file:
    if 'Node' in line:
        graph.add_node(line)
graph.print_log()
graph.allocate_registers(ARITHMETIC_ONLY, consider_edges=True)