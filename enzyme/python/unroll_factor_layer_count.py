# Disclaimer: This does not produce the real ops per layer, but it is a good approximation.

from Graph import Graph
from RegisterBin import RegisterBin
from csv_functions import update_dict, write_to_csv
from Visitor import Visitor

WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 128
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 1

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet']
BENCHMARKS = ['pathfinder']

# MODES = ['original', 'ad']
UNROLL_FACTORS = ['4', '8', '16', '32', '64', '128', '256']

UNROLL = ['normal']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'
write_file = open('parallel_count.csv', 'w+')
for benchmark in BENCHMARKS:
    for factor in UNROLL_FACTORS:
            print("------- {} {} ----------".format(benchmark, factor))
            LIVE_VAR_DIR='../build/unroll_count_test/live_vars.txt'
            DIR = '../build/unroll_count_test/{}_{}.txt'.format(benchmark, factor)
            file = open(DIR, 'r')
            graph = Graph(WINDOW_SIZE, LOG_ADDRESS, ADDRESS_DIR, LIVE_VAR_DIR, REGFILE_SIZE, ALU_SIZE, AVG_LOAD_DELAY)
            node_count = 0
            push_count = 0
            for line in file:
                # if 'Node' in line:
                    # if graph.add_node(line).is_arithmetic():
                    #     node_count += 1
                if 'push' in line.lower():
                    push_count += 1
            print(push_count)
            write_file.write('{},{}\n'.format(factor, push_count))
            print("------------- ------------- ----------")

# write_to_csv(alu_constrained_dict, 'avg_lifetime_tape_vs_fwd.csv')
