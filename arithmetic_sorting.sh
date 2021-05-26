#!/bin/bash -x
echo "Arithmetic Computation & Sorting problem "
read -p "enter a:" a
read -p "enter b:" b
read -p "enter c:" c
echo $a $b $c
d1=$(($a+$b*$c))
echo $d1
