#!/bin/bash



# This line promts the user to enter a numer they want to create the multiplication table for
read -p "Enter a number to generate its multiplication table:" num


read -p "Do you prefer to see a full or partial table from 1 to 10? (f/p):" userinput

#This line below describes the condition for what happens if the user picks "f" to the above command line

if [ "$userinput" = "f" ]; 

then

	for i in $(seq 1 1 10)

do
	result=$(($num * $i))

	echo "$num x $i = $result"
done

# This section conditions what should happen should the user chose "p" from line 18
elif [ "$userinput" = "p" ];

then
	echo "Enter the specified ranage you want to see."

	read -p "Enter the start number (between 1 and 10):" startnum
	read -p "Enter the end number (between 1 and 10):" endnum
# The above command opens the option for the user to enter their start and end number.
#The below code references on that start and end number as the range instead of 1 - 10.

if [ $endnum -lt $startnum ]; 
#The above  line and the one below is to ensure that the table runs full multiplication table if the start number is greater than the end number.

then
	startnum=1
	endnum=10

  	for i in $(seq $startnum 1 $endnum)
  
    	do 
	      result=$(($num * $i))
               echo "$num x $i = $result"
       done


else
	for i in $(seq $startnum 1 $endnum)
	
	do
		result=$(($num * $i))
		echo "$num x $i = $result"
	done


fi
fi

# This line promts the user to enter a numer they want to create the multiplication table for

while true;
do

read -p "Do you want to try a new number? (yes/no): " secondinput

if [ "$secondinput" = "no" ]; 

then
	break #This ends the loop if the user inputs no

elif [ "$secondinput" = "yes" ]; 

then

read -p "Enter a number to generate its multiplication table:" num


read -p "Do you prefer to see a full or partial table from 1 to 10? (f/p):" userinput

#This line below describes the condition for what happens if the user picks "f" to the above command line

if [ "$userinput" = "f" ];

then

	for (( i=1; i<11; i++ ));
do
        result=$(($num * $i))

        echo "$num x $i = $result"
done

# This section conditions what should happen should the user chose "p" from line 18
elif [ "$userinput" = "p" ];

then
        echo "Enter the specified ranage you want to see."

        read -p "Enter the start number (between 1 and 10):" startnum
        read -p "Enter the end number (between 1 and 10):" endnum
# The above command opens the option for the user to enter their start and end number.
#The below code references on that start and end number as the range instead of 1 - 10.

if [ $endnum -lt $startnum ]; 
#The line above and the below is to ensure that the table runs full multiplication table if the start number is greater than the end number.

then
        startnum=1
       	endnum=11

	for (( i=$startnum; i<$endnum; i++  ));

       do

              result=$(($num * $i))

                echo "$num x $i = $result"
        done

else
	 for (( i=$startnum; i<$endnum; i++ ));

       	 do
 
  		 result=$(($num * $i))
  
   		 echo "$num x $i = $result"
         done


fi
fi

else 
	echo "Invalid input, please enter 'yes' or 'no'." #This is what displays when a value that is neither yes nor no is inputed
fi

done



