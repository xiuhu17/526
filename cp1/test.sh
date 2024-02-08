cd build
make clean
cmake ..
make -j
cd ../tests
make clean
rm $1
make
make $1
make $1.llvm.bc
llc $1.llvm.bc
llc $1.debug.bc
