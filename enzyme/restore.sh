#!/bin/bash
cp build/*.cpp simple_tests/
cp build/run.sh .
rm -rf build
mkdir build
cp run.sh build/
cp fix.sh build/
cp simple_tests/*.cpp build/
cd build
cmake .. -DLLVM_EXTERNAL_LIT=/localhome/mha157/llvm-project/llvm/utils/lit/lit.py
make -j