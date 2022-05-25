export PATH=/localhome/mha157/llvm-project/build/bin:$PATH
/localhome/mha157/.local/bin/cmake --no-warn-unused-cli -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/x86_64-linux-gnu-gcc -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/x86_64-linux-gnu-g++ -S/localhome/mha157/Enzyme/enzyme -B/localhome/mha157/Enzyme/enzyme/build -G Ninja
cmake .. -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/x86_64-linux-gnu-gcc -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/x86_64-linux-gnu-g++  -DLLVM_EXTERNAL_LIT=/localhome/mha157/llvm-project/llvm/utils/lit/lit.py
make -j