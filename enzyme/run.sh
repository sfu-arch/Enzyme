export PATH=/localhome/mha157/llvm-project/build/bin:$PATH
# make -j
clang++ -Wall -fPIC -fno-rtti test.cpp -S -emit-llvm -o input.ll -fno-vectorize -fno-slp-vectorize -fno-unroll-loops
opt input.ll -load=Enzyme/LLVMEnzyme-12.so -enzyme -o output.ll -S -loop-unroll 
opt output.ll -O2 -o output_opt.ll -S 
# clang++ output_opt.ll -o a.exe
clang++ output.ll -o a.exe
clang++ output.ll -o bench.X86 
./a.exe > 1.txt

