import csv

WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 1024
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 15

BENCHMARKS = ['gravity', 'nn', 'matdescent', 'logsumexp', 'ode', "pathfinder", "somier", "lenet", "mttkrp", "sddmm", "spmv"]
MODES = ['ad']
UNROLL = ['normal']

BENCH_INFO = {}
for benchmark in BENCHMARKS:
    BENCH_INFO[benchmark] = {'input': 0, 'output': 0, 'intermediate': 0}
    for mode in MODES:
        for unroll in UNROLL:
            print("------- {} {} {} ----------".format(benchmark, mode, unroll))
            DIR = '../build/testcases/'+benchmark+'_'+mode+'_'+unroll+'.txt'
            file = open(DIR, 'r', encoding='ISO-8859-1')
            for line in file:
                if 'memOp: Out' in line:
                    BENCH_INFO[benchmark]['output'] += 1
                elif 'memOp: Input' in line:
                    BENCH_INFO[benchmark]['input'] += 1
                elif 'memOp: Inter' in line or 'Edge' in line:
                    BENCH_INFO[benchmark]['intermediate'] += 1
print(BENCH_INFO)

with open("in_out_intermediate.csv", 'w') as csvfile:
    fieldnames = ['benchmark', 'input', 'output', 'intermediate']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    for benchmark in BENCH_INFO:
        row = [{
                'benchmark': benchmark+'_'+unroll, 
                'input': BENCH_INFO[benchmark]['input'], 
                'output': BENCH_INFO[benchmark]['output'], 
                'intermediate': BENCH_INFO[benchmark]['intermediate']}]
        writer.writerows(row)