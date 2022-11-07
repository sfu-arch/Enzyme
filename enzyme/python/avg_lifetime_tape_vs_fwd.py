from Graph import Graph
from RegisterBin import RegisterBin
from csv_functions import update_dict, write_to_csv
from Visitor import Visitor

WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 128
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 1

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet', 'mass_spring']
# BENCHMARKS = ['gravity']

# MODES = ['original', 'ad']
MODES = ['ad']

UNROLL = ['normal']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'

class AvgLifetimeVisitor(Visitor):
    def visit(self, graph):
        edge_pairs = graph.edge_pairs
        lifetime = 0
        edge_count = 0
        for pair in edge_pairs:
            if len(pair[1].children) == 0:
                continue
            edge_count += 1
            lifetime += pair[1].children[0].actual_level - pair[0].actual_level
        return lifetime/max(edge_count, 1)

alu_constrained_dict = {}

for benchmark in BENCHMARKS:
    for mode in MODES:
        for unroll in UNROLL:
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))

            LIVE_VAR_DIR='../build/testcases/'+benchmark+'_'+'ad'+'_'+unroll+'_live_vars.txt'
            DIR = '../build/testcases/'+benchmark+'_'+'ad'+'_'+unroll+'.txt'
            file = open(DIR, 'r')
            graph = Graph(WINDOW_SIZE, LOG_ADDRESS, ADDRESS_DIR, LIVE_VAR_DIR, REGFILE_SIZE, ALU_SIZE, AVG_LOAD_DELAY)
            for line in file:
                if 'Node' in line:
                    graph.add_node(line)
            graph.print_log()
            # graph.allocate_registers(ARITHMETIC_ONLY, consider_edges=True)
            update_dict(alu_constrained_dict, benchmark, 'ad', unroll, graph.accept(AvgLifetimeVisitor()))
            update_dict(alu_constrained_dict, benchmark, 'original', unroll, graph.get_actual_avg_lifetime())
            print(alu_constrained_dict)
            print("------------- ------------- ----------")
write_to_csv(alu_constrained_dict, 'avg_lifetime_tape_vs_fwd.csv')
