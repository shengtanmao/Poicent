LLI="lli"
LLC="llc"
CC="cc"
POIC="../poicent.native"

$POIC $1.c > $1.ll
$LLC -relocation-model=pic $1.ll > $1.s
$CC -o $1.exe $1.s
./$1.exe > $1.out

cat $1.out

rm $1.ll $1.s $1.exe $1.out
