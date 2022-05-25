#!/bin/bash -x

read -p "Enter a number : " num
count=0

for (( i=1 ; i<=$num ; i++ ))
do 
         if [[ $num%$i -eq 0 ]]
          then 
                ((count++))

          fi
 done

         if [[ $count -eq 2 ]]
         then
             echo  "This is a prime number"
         else
             echo  "This is not a prime number"

         fi
