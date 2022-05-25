#!/bin/bash -x
  read -p "Enetr a number : " n
  powOf2=1
  i=1
  while [[ $n != 0 && $powOf2 -lt 256 ]]
  do
      powOf2=$(( 2*$powOf2 ))
      ((n--))
      echo $powOf2
done

