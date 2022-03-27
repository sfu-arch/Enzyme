import __init__
from cache import SetAssociativeCache

BLOCKSIZE = 64
SET_COUNT = 2
ASSOCIATIVITY = 128


if __name__ == "__main__":
    forward_count = 0
    reverse_count = 0

    cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY)
    for i in range(2):
        cache.reset_stats()
        file = open("../build/1.txt", "r")
        line_count = 0
        for line in file:
            if "Forward" in line:
                forward_count += 1
            elif "Reverse" in line:
                reverse_count += 1
            # command = line.split()
            # if command[0] != "load" and command[0] != "store":
            #     continue
            # if len(line.split(" ")) != 3:
            #     continue
            # address = line.split(" ")[2]
            # cache.get(int(address, 16))
            # line_count += 1
    print(forward_count, reverse_count)    
    # print("Hits: {}, Misses: {}, Hit Rate: {}".format(cache.hits, cache.misses, cache.hits/(cache.hits+cache.misses+1)))