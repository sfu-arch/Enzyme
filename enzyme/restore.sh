rm -rf build
mkdir build
cp run.sh build/
cp test.cpp build/
cd build
cmake .. -DLLVM_EXTERNAL_LIT=/localhome/mha157/llvm-project/llvm/utils/lit/lit.py
make -j