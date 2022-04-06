from Graph import Graph

LOG_ADDRESS = True
ADDRESS_DIR = 'addresses.txt'

# dir = '/localhome/mha157/Enzyme/enzyme/benchmarks/nn/results.txt'
dir = '../build/1.txt'

file = open(dir, 'r')
graph = Graph(LOG_ADDRESS, ADDRESS_DIR)
for line in file:
    if 'Node' in line:
        graph.add_node(line)

# for i in graph.nodes:
#     print("Node id: {}, occurances: {}, type: {}, max_level: {}".format(i, len(graph.nodes[i]), graph.nodes[i][-1].type, graph.nodes[i][-1].level))

graph.print_log()