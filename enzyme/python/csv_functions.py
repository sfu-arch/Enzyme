from Graph import Graph
import csv

def update_dict(dict, benchmark, mode, unroll, value):
    if benchmark not in dict:
        dict[benchmark] = {}
        dict[benchmark][unroll] = {}
        dict[benchmark][unroll][mode] = value
    if unroll not in dict[benchmark]:
        dict[benchmark][unroll] = {}
        dict[benchmark][unroll][mode] = value
    if mode not in dict[benchmark][unroll]:
        dict[benchmark][unroll][mode] = value

def write_to_csv(dict, filename):
    with open(filename, 'w') as csvfile:
        fieldnames = ['benchmark', 'ad', 'original']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for benchmark in dict:
            for unroll in dict[benchmark]:
                orig = dict[benchmark][unroll]['original'] if 'original' in dict[benchmark][unroll] else -1
                row = [{'benchmark': benchmark+'_'+unroll, 'ad': round(dict[benchmark][unroll]['ad'], 2), 'original': round(orig, 2) }]
                writer.writerows(row)

def update_ld_dict(dict, benchmark, unroll, values):
    if benchmark not in dict:
        dict[benchmark] = {}
        dict[benchmark][unroll] = values
    if unroll not in dict[benchmark]:
        dict[benchmark][unroll] = values

def write_mem_combination_to_csv(dict, filename):
    with open(filename, 'w') as csvfile:
        fieldnames = ['benchmark', 'ld_ld', 'st_ld', 'rev_to_fw']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for benchmark in dict:
            for unroll in dict[benchmark]:
                row = [{
                        'benchmark': benchmark+'_'+unroll, 
                        'ld_ld': round(dict[benchmark][unroll][0], 2),
                        'st_ld': round(dict[benchmark][unroll][1], 2),
                        'rev_to_fw': round(dict[benchmark][unroll][2], 2) 
                    }]
                writer.writerows(row)