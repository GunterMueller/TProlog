#

rm *.sym

xc AtomTable.def
xc Stacks.def
xc Unify.def

for x in *.def
do
 echo $x
 xc $x
done
