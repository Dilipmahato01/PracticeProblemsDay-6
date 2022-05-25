#!/bin/bash -x

read -p "Enetr starting range : " num1
read -p "Enter ending range : " num2
count=0
j=1
for (( i=$num1 ; i<$num2 ; i++ ))
do
         while [[ $j -le $i ]]
         do
                if [[ $i%$j -eq 0 ]]
                then
                          ((count++))
                fi
         done

         if [[ $count -eq 0 ]]
         then
                echo  $i
         fi
done






