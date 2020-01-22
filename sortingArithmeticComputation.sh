#!/bin/bash -x

echo "Enter Three Numbers"
read a
read b
read c

echo "Arithmetic Operation 1: $(($a + $b * $c))"

echo "Arithmetic Operation 2: $(($a * $b + $c))"

