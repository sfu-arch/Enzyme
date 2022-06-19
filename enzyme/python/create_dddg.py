from pickle import FALSE
from Graph import Graph
from RegisterBin import RegisterBin

WINDOW_SIZE = 50
REGFILE_SIZE = 1000000
ALU_SIZE = 16
ARITHMETIC_ONLY = False

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'fft', 'taylorlog', 'logsumexp', 'ode']
MODES = ['original', 'ad']
UNROLL = ['normal', 'unrolled']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'
for benchmark in BENCHMARKS:
    for mode in MODES:
        for unroll in UNROLL:
            LIVE_VAR_DIR='../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'_live_vars.txt'
            DIR = '../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'.txt'
            file = open(DIR, 'r')
            graph = Graph(WINDOW_SIZE, LOG_ADDRESS, ADDRESS_DIR, LIVE_VAR_DIR, REGFILE_SIZE, ALU_SIZE)
            for line in file:
                if 'Node' in line:
                    graph.add_node(line)

            graph.calc_max_liveness()
            graph.allocate_registers(ARITHMETIC_ONLY, consider_edges=True)
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))
            graph.print_actual_min_register_count()
            graph.print_max_lives_in_a_level()
            print("------------------ MAX Forward LEVEL: ")
            print("No Restriction: ", graph.max_forward_level)
            print("Actual: ", graph.max_forward_actual_level)
            graph.print_avg_lifetime()
            graph.print_actual_avg_lifetime()
            print("------------- ------------- ----------")

            # graph.print_log()
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