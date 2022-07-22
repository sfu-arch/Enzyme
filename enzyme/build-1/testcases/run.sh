#!/bin/bash
rmCommand=${1:-foo}

# -enable-dddg -log-main
export PATH=/localhome/mha157/llvm-project/build/bin:$PATH
BENCHMARKS=("nn" "matdescent" "gravity" "fft" "logsumexp" "taylorlog" "ode")
# BENCHMARKS=("logsumexp")

declare -A LogMode=(["original"]="-log-main" ["ad"]="-enable-dddg")
declare -A Unroll=(["normal"]="" ["unrolled"]="-Dunr")

if [ $rmCommand == "rm" ]; then
    rm *.ll *.exe *.txt
else
    for t in ${BENCHMARKS[@]}; do
        for u in ${!Unroll[@]}; do
            clang++ -O3 -Wall $t.cpp ${Unroll[$u]} -fPIC -fno-rtti -fno-slp-vectorize -emit-llvm -c -fno-unroll-loops -S -emit-llvm -o input.ll 
            for mode in ${!LogMode[@]}; do
                opt input.ll -load=../Enzyme/LLVMEnzyme-12.so -enzyme -o output_$t.ll -S ${LogMode[$mode]} -mem2reg
                clang++ output_$t.ll -o "$t"_"$mode"_"$u".exe 
                ./"$t"_"$mode"_"$u".exe 1 > "$t"_"$mode"_"$u".txt
                cp live_vars.txt "$t"_"$mode"_"$u"_live_vars.txt
            done
        done
    done
fi