#

rm -rf m2bin

mocka -s AtomTable
mocka -s Stacks
mocka -s Unify

for x in *.def
do
 echo $x
 mocka -s $(basename $x .def)
done

for x in *.mod
do
 echo $x
 mocka -c $(basename $x .mod)
done

## echo p Prolog | mocka
