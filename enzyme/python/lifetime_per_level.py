import csv
from typing import overload
from Graph import Graph
from RegisterBin import RegisterBin
from Visitor import Visitor


LEVEL_BUCKET_COUNT = 5
WINDOW_SIZE = 50
REGFILE_SIZE = 128
ALU_SIZE = 64
ARITHMETIC_ONLY = False
AVG_LOAD_DELAY = 1

BENCHMARKS = ['nn', 'matdescent', 'gravity', 'logsumexp', 'mttkrp', 'pathfinder', 'somier', 'lenet']
MODES = ['ad']
UNROLL = ['normal']
LOG_ADDRESS = False
ADDRESS_DIR = 'addresses.txt'

# BENCHMARKS = ['nn']
# MODES = ['original', 'ad']


class LifetimePerLevelVisitor(Visitor):
    def visit(self, graph):
        lifetime_per_levels = [{'lifetime': 0, 'edge_count': 0} for _ in range(LEVEL_BUCKET_COUNT)]
        edge_pairs = graph.edge_pairs
        max_level = max([pair[0].actual_level for pair in edge_pairs])
        lifetimes = []
        for pair in edge_pairs:
            if len(pair[1].children) == 0:
                continue
            lifetime = pair[1].children[0].actual_level - pair[0].actual_level
            bucket_index = min(int(pair[0].actual_level / max_level * LEVEL_BUCKET_COUNT), LEVEL_BUCKET_COUNT-1)
            lifetime_per_levels[bucket_index]['lifetime'] += lifetime
            lifetime_per_levels[bucket_index]['edge_count'] += 1
            lifetimes.append(lifetime)
        for i in lifetime_per_levels:
            print("level: {}, avg_lifetime: {}.".format(i, i['lifetime']/(i['edge_count']+1)))
        print("Average lifetime: {}".format(sum(lifetimes)/len(edge_pairs)) )
        return lifetime_per_levels

level_dict = {}
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
            graph.print_log()
            level_dict[benchmark] = graph.accept(LifetimePerLevelVisitor())
            print("------------- ------------- ----------")


def write_to_csv(dict, filename):
    with open(filename, 'w') as csvfile:
        fields = ['lifetime_{}'.format(i) for i in range(LEVEL_BUCKET_COUNT)]
        fields += ['edge_count_{}'.format(i) for i in range(LEVEL_BUCKET_COUNT)]
        fields = ['benchmark'] + fields
        writer = csv.DictWriter(csvfile, fieldnames=fields)
        writer.writeheader()
        for benchmark in dict:
            row = [{'benchmark': benchmark}]
            for i in range(LEVEL_BUCKET_COUNT):
                row[0]['lifetime_{}'.format(i)] = dict[benchmark][i]['lifetime']
                row[0]['edge_count_{}'.format(i)] = dict[benchmark][i]['edge_count']
            writer.writerows(row)

write_to_csv(level_dict, 'lifetime_per_level.csv')
