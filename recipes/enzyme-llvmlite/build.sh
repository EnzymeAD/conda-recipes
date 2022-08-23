export LLVM_DIR=$PREFIX/lib/cmake/llvm

cd enzyme
mkdir build
cd build

cmake -GNinja .. -DLLVM_DIR=$LLVM_DIR -DCMAKE_INSTALL_PREFIX=$PREFIX
ninja

ninja install
