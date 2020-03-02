#HELLO="Hello Vijay"

#echo $HELLO

#variable a,b
#a=1
#b=2
#echo $a,$b

#arithmetic operations
#c=$(( a+b ))
#echo "a+b" is $c
#echo "a-b" is $(( a-b ))
#echo "a*b" is $(( a*b ))

#command substitutions 
#myfiles=$( ls ~/ | wc -l )
#echo $myfiles

#user input, get two numbers
#echo "Enter your first name"
#read firstname
#echo "Enter your last name"
#read lastname
#echo "Your full name is: $firstname $lastname"

#more advanced user input
#echo "Enter a number"
#read numberone
#echo "Enter another number"
#read numbertwo
#if [ $numberone -gt $numbertwo ]
#then
#echo $numberone "is the larger number"
#else 
#echo $numbertwo "is the larger number"
#fi

#Loops
#aligners="bwa star bowtie tophat trinity"
#for item in $aligners 
    #do
    #echo $item 
    #done

#function that converts celcius to fahrenheit
function ctof
    {
    ft=(( $1 * (9/5) + 32 ))
    echo $ft
}

ctof 37
