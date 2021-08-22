# Poicent
microc with pointers

## How to build
### run docker
``docker run --rm -it -v `pwd`:/home/microc -w=/home/microc columbiasedwards/plt``

### ocamlbuild in docker
`ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis -cflags -w,+a-4 poicent.native`

## How to run tests in docker
Go to the folder pointer-tests and run the desired test with:  
`sh run.sh test-<name>`  
For example:  
`sh run.sh test-arith1`
