#!/bin/bash -x
read -p "Enter a number " n
rev=0
temp=$n

     function isPalindrome()
     {
       if [ $temp -eq $rev ]
       then
             echo "This is a palindrome number"
       else
            echo  "This is not a palindrome number"
       fi
    }

while [[ $n -gt 0 ]]
do
    rem=$(( $n%10 ))   #Here it will give the remainder
    rev=$(( $rev$rem ))
      n=$(( $n/10 ))
done

    # echo $rev
     isPalindrome $n  $rev
 
