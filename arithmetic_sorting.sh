#!/bin/bash -x
echo "Arithmetic Computation & Sorting problem "
read -p "enter a:" a
read -p "enter b:" b
read -p "enter c:" c
echo "user inputs are:$a $b $c"
#d1=$(($a+$b*$c))
#echo $d1
#d2=$(($a*$b+$c))
#echo $d2
d3=$(($c+$a/$b))
echo $d3
