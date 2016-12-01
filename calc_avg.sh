#!/bin/bash

sum=0
count=0
while true; do 
  read -p "Enter number:" number
  if ! [[ $number =~ ^[0-9]+$ ]]; then break; fi
  sum=$(($sum + $number))
  count=$(($count + 1))
done

echo sum=$sum
echo count=$count
echo average=$(echo "$sum / $count" | bc)

