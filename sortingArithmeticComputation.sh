#!/bin/bash -x

echo "Enter Three Numbers"
read a
read b
read c

echo "Arithmetic Operation1: $(($a + $b * $c))"

echo "Arithmetic Operation2: $(($a * $b + $c))"

echo "Arithmetic Operation3: $(($c * $a / $b ))"

echo "Arithmetic Operation2: $(($a % $b + $c))"




