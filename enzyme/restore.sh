#!/bin/bash
cp build/test.cpp .
cp build/same_levels.cpp .
cp build/run.sh .
rm -rf build
mkdir build
cp run.sh build/
cp test.cpp build/
cp same_levels.cpp build/
cd build
cmake .. -DLLVM_EXTERNAL_LIT=/localhome/mha157/llvm-project/llvm/utils/lit/lit.py
make -j