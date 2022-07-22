from Graph import Graph
from RegisterBin import RegisterBin
from csv_functions import update_dict, write_to_csv, update_ld_dict, write_mem_combination_to_csv

WINDOW_SIZE = 50
REGFILE_SIZE = 128000
ALU_SIZE = 10000
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 0

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet']
MODES = ['original', 'ad']
# MODES = ['ad']

UNROLL = ['normal']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'

no_constraint_dict = {}
alu_constrained_dict = {}
load_constrained_dict = {}
register_constrained_dict = {}
memory_combination_dict = {}

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
            # print(graph.get_min_register_count())
            graph.allocate_registers(ARITHMETIC_ONLY, consider_edges=True)
            # update_dict(register_constrained_dict, benchmark, mode, unroll, graph.get_actual_avg_lifetime())
            update_dict(no_constraint_dict, benchmark, mode, unroll, graph.get_actual_min_register_count())

            # if mode == 'ad':
            #     update_ld_dict(memory_combination_dict, benchmark, unroll, graph.get_mem_op_combination())
            print("------------- ------------- ----------")

# write_to_csv(register_constrained_dict, 'register_constrained.csv')
write_to_csv(no_constraint_dict, 'not_constrained.csv')
# write_mem_combination_to_csv(memory_combination_dict, 'memory_combination.csv')

# LIVE_VAR_DIR = '../build/live_vars.txt'
# dir = '../build/exec_results/gravity/gravity_ad_normal.txt'
# dir = '../build/1.txt'

# LIVE_VAR_DIR = '/localhome/mha157/Enzyme/enzyme/benchmarks/hand/live_vars.txt'
# dir = '/localhome/mha157/Enzyme/enzyme/benchmarks/hand/results.txt'

# file = open(dir, 'r')
# graph = Graph(WINDOW_SIZE, LOG_ADDRESS, ADDRESS_DIR, LIVE_VAR_DIR, REGFILE_SIZE, ALU_SIZE)
# for line in file:
#     if 'Node' in line:
#         graph.add_node(line)
# graph.print_log()

# graph.allocate_registers(ARITHMETIC_ONLY, consider_edges=True)