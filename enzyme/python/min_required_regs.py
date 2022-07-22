from Graph import Graph
from RegisterBin import RegisterBin
from csv_functions import update_dict, write_to_csv, update_ld_dict, write_mem_combination_to_csv

WINDOW_SIZE = 50
REGFILE_SIZE = 10000000
ALU_SIZE = 10000000
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 0

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet']
MODES = ['original', 'ad']
# MODES = ['ad']

UNROLL = ['normal']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'

min_reg_count = {}

for benchmark in BENCHMARKS:
    for mode in MODES:
        for unroll in UNROLL:
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))

            LIVE_VAR_DIR='../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'_live_vars.txt'
            DIR = '../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'.txt'
            file = open(DIR, 'r')
            graph = Graph(WINDOW_SIZE, LOG_ADDRESS, ADDRESS_DIR, LIVE_VAR_DIR, REGFILE_SIZE, ALU_SIZE, AVG_LOAD_DELAY)
            for line in file:
                if 'Node' in line:
                    graph.add_node(line)
            # graph.calc_max_liveness()
            graph.print_log()
            print(graph.get_min_register_count())
            graph.allocate_registers(ARITHMETIC_ONLY, consider_edges=True)
            # update_dict(register_constrained_dict, benchmark, mode, unroll, graph.get_actual_avg_lifetime())
            update_dict(min_reg_count, benchmark, mode, unroll, graph.get_actual_min_register_count())
            print(graph.get_actual_min_register_count())
            print("------------- ------------- ----------")

write_to_csv(min_reg_count, 'min_register_count.csv')
