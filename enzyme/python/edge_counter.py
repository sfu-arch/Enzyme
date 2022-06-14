dir = '../build/1.txt'
file = open(dir)

edges = 0
for line in file:
    if "Edge" in line:
        edges += 1

print(edges)