import __init__
from cache import SetAssociativeCache

BLOCKSIZE = 32
SET_COUNT = 1
ASSOCIATIVITY = 32


if __name__ == "__main__":
    cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY)
    # for i in range(1):
    cache.reset_stats()
    file = open("../build/1.txt", "r")
    for line in file:
        if 'REVERSE' not in line:
            continue
        address = line.split(",")[1]
        cache.get(int(address, 16))
    print("Hits: {}, Misses: {}, Hit Rate: {}".format(cache.hits, cache.misses, cache.hits/(cache.hits+cache.misses+1)))