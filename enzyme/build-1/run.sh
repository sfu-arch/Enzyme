# -enable-dddg -log-main -enable-bins
export PATH=/localhome/mha157/llvm-project/build/bin:$PATH
# clang++ -Wall -fPIC -fno-rtti large.cpp -S -emit-llvm -o input.ll -fno-vectorize -fno-slp-vectorize -fno-unroll-loops
clang++ -O3 -Wall nn.cpp  -fPIC -fno-rtti -fno-slp-vectorize -emit-llvm -c -fno-unroll-loops -S -emit-llvm -o input.ll 
opt input.ll -load=Enzyme/LLVMEnzyme-12.so -enzyme -o output.ll -S -mem2reg -bin-size=3 -enable-bins -mem-op-ratio
# opt output.ll -O2 -o output_opt.ll -S 
# clang++ output_opt.ll -o a.exe
clang++ output.ll -o a.exe 
# clang++ output.ll -o bench.X86 
./a.exe 1 > 1.txt
