import __init__
from cache import SetAssociativeCache
DIR = 'addresses.txt'
WARM_UP_ITERATIONS = 1
BLOCKSIZE = 64
SET_COUNT = 1
ASSOCIATIVITY = 16
POLICY = 'LRU'

forward_accesses = []
combined_accesses = []

if __name__ == "__main__":
    lru_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'LRU')
    belady_forward_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'BELADY')
    belady_combined_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'BELADY')

    file = open(DIR, "r")
    for line in file:
        if 'F_' in line:
            forward_accesses.append(int(line.split('_')[1], 16))
        combined_accesses.append(int(line.split('_')[1], 16))

    for i in range(WARM_UP_ITERATIONS):
        lru_cache.reset_stats()
        for address in combined_accesses:
            lru_cache.get(address)

    
    for i in range(WARM_UP_ITERATIONS):
        combined_accesses_range = [address - address % BLOCKSIZE for address in combined_accesses]
        belady_combined_cache.reset_stats()
        while(combined_accesses):
            address = combined_accesses[0]
            belady_combined_cache.get(address, combined_accesses_range[1:])
            combined_accesses.pop(0)
            combined_accesses_range.pop(0)
            
    print('\n--------------------LRU--------------------\n')
    lru_cache.show_log()    
    print('\n--------------------Belady--------------------\n')
    belady_combined_cache.show_log() 