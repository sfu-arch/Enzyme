from tarfile import BLOCKSIZE
import __init__
from cache import SetAssociativeCache
BLOCKSIZE = 64
SET_COUNT = 256
ASSOCIATIVITY = 8

if __name__ == "__main__":
    cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY)
    
    file = open("../build/1.txt", "r")
    line_count = 0
    for line in file:
        command = line.split()
        if command[0] != "load" and command[0] != "store":
            continue
        address = line.split(" ")[1]
        cache.get(int(address, 16))
        line_count += 1
    print("Hits: {}, Misses: {}, Hit Rate: {}".format(cache.hits, cache.misses, cache.hits/(cache.hits+cache.misses)))