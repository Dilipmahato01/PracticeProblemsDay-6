#!/bin/bash -x

echo "Choose 1 to convert C to F"
echo "choose 2 to convert F to  C"

read -p "Choose a tempratur conversion selection : " tempIn

function fehrenheit()
{
   while [[ $degC -ge 0 && $degC -le 100 ]]
   do
         echo  degF=$(( $(($degC*9/5)) + 32 ))
         break
   done
}

function celcius()
{
   while [[ $degF -ge 32 && $degF -le 212 ]]
   do
         echo degC=$(( $(( $degF-32 )) * 5/9 ))
         break
   done
}

if [ $tempIn == 1 ]
then
       echo  "You want to convert celcius to fehrenheit"

       read -p "Enetr the celcius value : "  degC

       fehrenheit $degC

elif [ $tempIn == 2 ]
then
         echo  "You want to convert fehrenheit to celcius"

         read -p "Enetr the fehrenheit value : "  degF

         celcius $degF
fi



