from Graph import Graph
from RegisterBin import RegisterBin
from csv_functions import update_dict, write_to_csv, update_ld_dict, write_mem_combination_to_csv

WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 10000
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 1

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet']
# BENCHMARKS = ['matdescent']

# MODES = ['original', 'ad']
MODES = ['ad']

UNROLL = ['normal']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'

working_set_dict = {}

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
            update_dict(working_set_dict, benchmark, 'ad', unroll, graph.get_working_set())
            print("------------- ------------- ----------")

write_to_csv(working_set_dict, 'working_set.csv')
