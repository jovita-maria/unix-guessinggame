 guess(){
	answer=$(ls -l|grep "^-"|wc -l)
	while true;
	do
	  echo "Enter a number"
	  read number
	 if [ $number -lt $answer ]
	 then
	  echo "Your guess is less than the true number"
	 elif [ $number -gt $answer ]
         then
	    echo "Your answer is greater than the true number"
	else
	   echo "You are right"
        break;
	fi
    done
}

echo "Guess the files in the current directory"
guess
