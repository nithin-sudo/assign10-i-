#!/bin/bash 
echo "Arithmetic Computation & Sorting problem "
read -p "enter a:" a
read -p "enter b:" b
read -p "enter c:" c
echo "user inputs are a:$a b:$b c:$c"
declare -a array
declare -A dict
d1=$(($a+$b*$c))
echo $d1
d2=$(($a*$b+$c))
echo $d2
d3=$(($c+$a/$b))
echo $d3
d4=$(($a%$b+$c))
echo $d4
dict[a+b*c]=$(($a+$b*$c))
dict[a*b+c]=$(($a*$b+$c))
dict[c+a/b]=$(($c+$a/$b))
dict[a%b+c]=$(($a%$b+$c))
i=0
for key in ${!dict[@]}
do 
	echo $key=${dict[$key]}
	array[i++]=${dict[$key]}
done
echo ${array[@]}
for ((i=1; i<4; i++))
do
   for ((j=0; j<i; j++))
   do
     if [ ${array[$i]} -gt ${array[$j]} ]
     then
         temp=${array[$j]}
         array[$j]=${array[$i]}
         array[$i]=$temp
     fi
   done
done
echo -e "descending order \n${array[@]}"
