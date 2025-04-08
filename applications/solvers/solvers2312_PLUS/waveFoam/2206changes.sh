#!/bin/bash
list=`ls *C *H`
for i in $list
do
echo "============ BEGIN: "$i" ============"
if [ "$i" == "waveFoam.C" ]
then
diff $i ../../interFoam2312/interFoam.C
else
diff $i ../../interFoam2312/$i
fi
echo
echo "============= END: "$i" ============="
echo
done
