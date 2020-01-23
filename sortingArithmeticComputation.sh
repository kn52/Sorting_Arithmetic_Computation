#!/bin/bash -x

echo "Enter Three Numbers"
read a
read b
read c

echo "Arithmetic Operation1: $(($a + $b * $c))"

echo "Arithmetic Operation2: $(($a * $b + $c))"

echo "Arithmetic Operation3: $(($c * $a / $b ))"

echo "Arithmetic Operation2: $(($a % $b + $c))"

res1=$(($a + $b * $c))
res2=$(($a * $b + $c))
res3=$(($c * $a / $b ))
res4=$(($a % $b + $c))

arithmeticDict[res1]=$res1
arithmeticDict[res2]=$res2
arithmeticDict[res3]=$res3
arithmeticDict[res4]=$res4

echo "Arithmetic Dictionary: ${arithmeticDict[@]}"




