#!/bin/bash -x
  read -p "Enetr a number : " n
  powOf2=1

  for (( i=1; i<=n ; i++ ))
  do
      powOf2=$(( 2*$powOf2 ))
      echo $powOf2
done


 
