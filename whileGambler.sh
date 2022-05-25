#!/bin/bash -x

winBet=1
lossBet=2
winsCount=0
money=100
noOfBet=1
while [[ $money  -ge 0 && $money -le 200 ]]
do
      randomCheck=$((1+RANDOM%2))
      case    $randomCheck in
                                 $winBet )
                                   ((winsCount++))
                                   ((money++))
                                 ;;
                                 $lossBet  )
                                    ((money--))
                                 ;;
                                 *)

                                 ;;
      esac

      if [[ $money -eq 0 ]]
      then
               echo "The gambler doesn't have moeny to bet"
               break

      elif [[ $money -eq 200 ]]
      then
               echo "The gamlbler reaches his 200's goals"
               echo "No. of bet's gambler wins : "$winsCount
               break

      fi

               ((noOfBet++))
               echo  "No. of bet's galbler made : "$noOfBet

done
