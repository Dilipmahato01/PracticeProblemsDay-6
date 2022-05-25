#!/bin/bash -x

heads=1
tails=2
headsCount=0
tailsCount=0
totalNoOfFlips=1

while [[  $headsCount -le 11 && $tailsCount -le 11 ]]
do
      randomCheck=$((1+RANDOM%2))
      case $randomCheck in
                                 $heads )
                                   ((headsCount++))
                                 ;;
                                 $tails  )
                                   ((tailsCount++))
                                 ;;
                                 *)

                                 ;;
      esac


      if [[ $headsCount -eq 11 ]]
      then
                                 echo "Heads wins"
                                 break

      elif [[ $tailsCount -eq 11 ]]
      then
                                 echo  "Tails wins"
                                 break
      fi


                                 ((totalNoOfFlips++))


                                 echo $totalNoOfFlips

done
 
