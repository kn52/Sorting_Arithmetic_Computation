#!/bin/bash

declare -a arithmeticArr
declare -A arithmeticDict
echo "Enter Three Numbers"
read a
read b
read c

echo "Arithmetic Operation1: $(($a + $b * $c))"

echo "Arithmetic Operation2: $(($a * $b + $c))"

echo "Arithmetic Operation3: $(($c + $a / $b))"

echo "Arithmetic Operation4: $(($a % $b + $c))"

res1=$(($a + $b * $c))
res2=$(($a * $b + $c))
res3=$(($c + $a / $b))
res4=$(($a % $b + $c))
arithmeticDict[res1]=$res1
arithmeticDict[res2]=$res2
arithmeticDict[res3]=$res3
arithmeticDict[res4]=$res4


echo "Arithmetic Dictionary: ${arithmeticDict[@]}"


k=0
for i in ${!arithmeticDict[@]}
do
	arithmeticArr[$k]=${arithmeticDict[$i]}
	((k++))
done

echo "${arithmeticArr[@]}"


for((i=1;i<${#arithmeticArr[@]};i++))
do
	temp=${arithmeticArr[$i]}
	j=$((i - 1))
	while (( $j >= 0 && ${arithmeticArr[$j]} < $temp ))
	do
		arithmeticArr[$((j + 1))]=${arithmeticArr[$j]}
		j=$((j - 1))
	done
	arithmeticArr[$(( j + 1 ))]=$temp
done


printf "Array in Descending Order: " 
echo "${arithmeticArr[@]}"

printf "Array in Ascending Order: "
for ((i=${#arithmeticArr[@]}-1;i>=0;i-- ))
do
	printf "${arithmeticArr[$i]} "
done
echo




