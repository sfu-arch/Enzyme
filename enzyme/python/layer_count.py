import csv
from Graph import Graph
from RegisterBin import RegisterBin
from csv_functions import update_dict, write_to_csv, update_ld_dict, write_mem_combination_to_csv

WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 64
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 15

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet']
# MODES = ['original', 'ad']
MODES = ['ad']

# UNROLL = ['normal', 'unrolled']

UNROLL = ['unrolled']

LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'

leyer_dict = {}

for benchmark in BENCHMARKS:
    for mode in MODES:
        layer_count = 0
        for unroll in UNROLL:
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))

            DIR = '../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'.txt'
            file = open(DIR, 'r')
            for line in file:
                if 'Push!' in line:
                    layer_count += 1
            leyer_dict[benchmark] = layer_count
            print("------------- ------------- ----------")

def write_to_csv(dict, filename):
    with open(filename, 'w') as csvfile:
        fields = ['benchmark', 'layers']
        writer = csv.DictWriter(csvfile, fieldnames=fields)
        writer.writeheader()
        for benchmark in dict:
            row = [{'benchmark': benchmark, 'layers': dict[benchmark]}]
            writer.writerows(row)
write_to_csv(leyer_dict, 'layer_count.csv')

