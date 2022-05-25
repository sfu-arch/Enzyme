from unicodedata import name
import __init__
from cache import SetAssociativeCache
DIR = 'addresses.txt'
WARM_UP_ITERATIONS = 1
BLOCKSIZE = 64
SET_COUNT = 1
ASSOCIATIVITY = 32
POLICY = 'LRU'

forward_accesses = []
combined_accesses = []

if __name__ == "__main__":
    lru_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'LRU')
    belady_forward_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'BELADY')
    belady_combined_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'BELADY')
    belady_then_lru_cache = SetAssociativeCache(BLOCKSIZE, SET_COUNT, ASSOCIATIVITY, 'BELADY')
    
    to_be_visited_dict = {}
    file = open(DIR, "r")
    for line in file:
        if 'F_' in line:
            forward_accesses.append(int(line.split('_')[1], 16))
        combined_accesses.append(int(line.split('_')[1], 16))
        if 'visited' in line: 
            to_be_visited_dict[int(line.split('_')[1], 16)] = True

    for i in range(WARM_UP_ITERATIONS):
        lru_cache.reset_stats()
        for address in combined_accesses:
            lru_cache.get(address)

    address_range = [address - address % BLOCKSIZE for address in combined_accesses]
    for i in range(WARM_UP_ITERATIONS):
        belady_combined_cache.reset_stats()
        for i in range(len(combined_accesses)):
            address = combined_accesses[i]
            future_window = address_range[i:] if i < len(address_range) else None
            victim = lru_cache.get_victim(address, future_window)
            if victim.address in future_window and address not in future_window:
                print("{} is in future window and {} is not".format(victim.address, address))
            # belady_combined_cache.check_if_decision_is_correct(to_be_visited_dict, address, future_window)
            belady_combined_cache.get(address, future_window)

    
    for i in range(WARM_UP_ITERATIONS):
        belady_forward_cache.reset_stats()
        for i in range(len(combined_accesses)):
            address = combined_accesses[i]
            end_window_index = i + min(len(forward_accesses), len(address_range)-i)
            future_window = address_range[i:end_window_index] if i < len(address_range) else None
            belady_forward_cache.get(address, future_window)

    for i in range(WARM_UP_ITERATIONS):
        belady_then_lru_cache.reset_stats()
        for i in range(len(combined_accesses)):
            address = combined_accesses[i]
            end_window_index = i + min(len(forward_accesses), len(forward_accesses)-i)
            future_window = address_range[i:end_window_index] if i < len(forward_accesses) else None
            belady_then_lru_cache.get(address, future_window)

    print('\n-------------------- LRU --------------------\n')
    lru_cache.show_log()    
    print('\n-------------------- Belady Optimal --------------------\n')
    belady_combined_cache.show_log() 
    print('\n-------------------- Belady Narrow Window --------------------\n')
    belady_forward_cache.show_log() 
    print('\n-------------------- Belady Then LRU --------------------\n')
    belady_then_lru_cache.show_log() 
