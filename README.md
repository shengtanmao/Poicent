# Poicent
microc with pointers

run docker
docker run --rm -it -v `pwd`:/home/microc -w=/home/microc columbiasedwards/plt

ocamlbuild
ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis -cflags -w,+a-4 poicent.native

run translate to llvm
./poicent.native -l tests/test-subscript1.c

clang translate to llvm
clang -S -emit-llvm foo.c
