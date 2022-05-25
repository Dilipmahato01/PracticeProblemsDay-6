#!/bin/bash -x

read -p "Enter a number : " num 
count=0
rev=0
temp=$num

function isPrime()       #fuction to check prime or not
{
    if [[ $count -eq 2 ]]
    then
        echo true
    else
        echo false

    fi
}

function isPalindrome()    #function to check palindrome
{

       if [ $temp -eq $rev ]
       then
             echo "This is also a palindrome number"
       else
            echo  "This is not a palindrome number"
       fi

}
#--------------------prime part----------------------------------------------

for (( i=1 ; i<=$num ; i++ ))
do
           if [[ $num%$i -eq 0 ]]
           then
                 ((count++))
            fi
done

          isPrime $count
#-------------------------palindrome part------------------------------------
if [[ isPrime -eq true ]]
then
      while [[ $num -gt 0 ]]
      do
            rem=$(( $num%10 ))   #Here it will give the remainder
            rev=$(( $rev$rem ))
            num=$(( $num/10 ))

      done

fi
           isPalindrome $num  $rev
