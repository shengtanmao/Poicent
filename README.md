# Poicent
[MicroC](http://www.cs.columbia.edu/~sedwards/classes/2021/4115-spring/microc.tar.gz) with pointers

## Quick Setup
### run preconfigured docker
``docker run --rm -it -v `pwd`:/home/poicent -w=/home/poicent columbiasedwards/plt``

### build compiler and run tests
`make`

## Execution
Given file `<name>.pc`, execute with  
`sh poicent.sh <name>`
