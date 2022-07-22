INPUT_COUNT = 5
OUTPUT_ARRAY = [1, 2, 1, 3, 4]


if __name__ == '__main__':
    for i in OUTPUT_ARRAY:
        if i > INPUT_COUNT:
            print("Wrong output specification! Output should have less than {} input dependencies.".format(INPUT_COUNT))

    ret_type = 'std::pair<double' + ''.join([', double' for i in range(len(OUTPUT_ARRAY)-1)]) + '>'
    input_type = 'double in_0' + ''.join([', double in_' + str(i+1) for i in range(INPUT_COUNT-1)])
    file = open("auto_generated_func.cpp", "w")
    file.write('#include <stdio.h>\n')
    file.write('template<typename Return, typename... T>\nReturn __enzyme_autodiff(T...);\n')
    file.write(ret_type + ' foo(' + input_type + ') {\n')
    file.write('\tdouble tmp_0 = in_0 * in_0;\n')
    for i in range(INPUT_COUNT):
        file.write('\tdouble tmp_' + str(i+1) + ' = in_' + str(i+1) + ' * tmp_' + str(i) + ';\n')
    
    ret_statement = '\treturn { tmp_' + str(OUTPUT_ARRAY[0]-1)
    file.write(ret_statement)
    for i in range(len(OUTPUT_ARRAY)-1):
        file.write(', tmp_' + str(OUTPUT_ARRAY[i+1] - 1))
    file.write('\t};\n')
    file.write('}\n')
    input_args = 'in_0' + ''.join([', in_' + str(i+1) for i in range(INPUT_COUNT-1)])
    file.write(ret_type + ' dfoo(' + input_type + ') {\n')
    file.write('\treturn __enzyme_autodiff<{} >((void*) foo, {});\n'.format(ret_type, input_args))
    file.write('}\n')
    file.write('int main() {\n')
    numeric_inputs = '1.1' + ''.join([', 1.2' for i in range(INPUT_COUNT-1)])
    file.write('\tauto res = dfoo(' + numeric_inputs + ');\n')
    
    file.write('}\n')
    file.close()
