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

memory_size = {}

for benchmark in BENCHMARKS:
    for mode in MODES:
        for unroll in UNROLL:
            addresses = {}
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))

            LIVE_VAR_DIR='../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'_live_vars.txt'
            DIR = '../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'.txt'
            file = open(DIR, 'r')
            for line in file:
                if 'load' in line:
                    if 'Parent:' in line:
                        address = line.split('Parent: ')[1].split(',')[0].strip()
                        if address not in addresses:
                            addresses[address] = 1
                if 'store' in line:
                    if 'F_Node' in line:
                        address = line.split('F_Node:')[1].split(',')[0].strip()
                        addresses[address] = 1
                    if 'R_Node' in line:
                        address = line.split('R_Node:')[1].split(',')[0].strip()
                        addresses[address] = 1
            update_dict(memory_size, benchmark, mode, unroll, len(addresses))

            print("------------- ------------- ----------")

write_to_csv(memory_size, 'memory_size.csv')
