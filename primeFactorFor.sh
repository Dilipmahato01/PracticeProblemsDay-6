#!/bin/bash -x

read -p "Enter a numbedr : "  num
temp=$num

for (( i=2;i<=num;i++ ))
do
    while [[ $temp -gt 1 ]]

          if [[ $temp%$i -eq 0 ]]
          then
                   echo $i
                   temp=$(( $temp/$i ))

          else
                   $i++;
          fi

    done

done
