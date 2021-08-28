# "make test" Compiles everything and runs the regression tests

.PHONY : test
test : all testall.sh
	./testall.sh

# "make all" builds the executable as well as the library designed
# to test linking external code

.PHONY : all
all : poicent.native

# "make poicent.native" compiles the compiler
#
# The _tags file controls the operation of ocamlbuild, e.g., by including
# packages, enabling warnings
#
# See https://github.com/ocaml/ocamlbuild/blob/master/manual/manual.adoc

poicent.native :
	opam config exec -- \
	ocamlbuild -use-ocamlfind poicent.native

# "make clean" removes all generated files

.PHONY : clean
clean :
	ocamlbuild -clean
	rm -rf testall.log ocamlllvm *.diff

# Building the tarball
# 
# TESTS = \
#   add1 arith1 arith2 arith3 fib float1 float2 float3 for1 for2 func1 \
#   func2 func3 func4 func5 func6 func7 func8 func9 gcd2 gcd global1 \
#   global2 global3 hello if1 if2 if3 if4 if5 if6 local1 local2 ops1 \
#   ops2 var1 var2 while1 while2\
#   pc-arith1 pc-arith2 pc-arith3 pc-assign1 pc-assign2 pc-assign3 \
#   pc-assign4 pc-cmp1 pc-func1 pc-sub1
# 
# FAILS = \
#   assign1 assign2 assign3 dead1 dead2 expr1 expr2 expr3 float1 float2 \
#   for1 for2 for3 for4 for5 func1 func2 func3 func4 func5 func6 func7 \
#   func8 func9 global1 global2 if1 if2 if3 nomain printb print \
#   return1 return2 while1 while2 \
#   pc-assign1 pc-assign2 pc-assign3 pc-cmp1
# 
# TESTFILES = $(TESTS:%=test-%.pc) $(TESTS:%=test-%.out) \
# 	    $(FAILS:%=fail-%.pc) $(FAILS:%=fail-%.err)
# 
# TARFILES = ast.ml sast.ml codegen.ml Makefile _tags poicent.ml parser.mly \
# 	README scanner.mll semant.ml testall.sh \
# 	Dockerfile \
# 	$(TESTFILES:%=tests/%) 
# 
# poicent.tar.gz : $(TARFILES)
# 	cd .. && tar czf poicent/microc.tar.gz \
# 		$(TARFILES:%=poicent/%)
