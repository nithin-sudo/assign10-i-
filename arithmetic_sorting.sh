#!/bin/bash 
echo "Arithmetic Computation & Sorting problem "
read -p "enter a:" a
read -p "enter b:" b
read -p "enter c:" c
echo "user inputs are a:$a b:$b c:$c"

declare -A dict
d1=$(($a+$b*$c))
echo $d1
d2=$(($a*$b+$c))
echo $d2
d3=$(awk "BEGIN {print ($c+$a/$b)}")
echo $d3
d4=$(awk "BEGIN {print ($a%$b+$c)}")
echo $d4
dict=([a+b*c]=$d1 [a*b+c]=$d2 [c+a/b]=$d3 [a%b+c]=$d4)
for key in ${!dict[@]}
do 
	echo dict[$key]=${dict[$key]}
done
