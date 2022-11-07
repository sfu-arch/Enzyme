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

input_size = {}

for benchmark in BENCHMARKS:
    for mode in MODES:
        for unroll in UNROLL:
            args = []
            inputs = {}
            fwd_address = {}
            total = 0
            # inputs = 0
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))

            LIVE_VAR_DIR='../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'_live_vars.txt'
            DIR = '../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'.txt'
            file = open(DIR, 'r')
            for line in file:
                if 'getelementptr' in line:
                    if len(line.split('Parent: ')) < 1:
                        print(line)
                        continue
                    parent = line.split('Parent: ')[1].split(',')[0]
                    if parent in args:
                        load_arg = True
                if 'load' in line and load_arg:
                    load_arg = False
                    parent = line.split('Parent: ')[1].split(',')[0]
                    inputs[parent] = 1
                    # inputs += 1
                if 'arg' in line:
                    args.append(line.split('F_Node: ')[1].split(',')[0])
            update_dict(input_size, benchmark, mode, unroll, len(inputs))
            print(len(inputs))
            print("------------- ------------- ----------")

write_to_csv(input_size, 'input_size.csv')
