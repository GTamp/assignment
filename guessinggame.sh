function countdir {

        local dircount=0

        dircount=$(ls -l | egrep "^d" | wc -l)

        echo "$dircount"

}

loopstop=0

echo "Welcome to Guessing Game! The purpose of this game is to try and guess the number of sub-directories in the current working directory. Go ahead and try it. Take your first guess:"
read guess

while [[ $loopstop -eq 0 ]]
do
	if [[ $guess -eq $(countdir) ]]
	then
		echo "You guessed right. Congratulations!"
		echo "The game has ended."
		loopstop=1
	elif [[ $guess -gt $(countdir) ]]
	then
		echo "Too high! Guess again...:"
		read guess
	else
		echo "Too low! Guess again...:"
		read guess
	fi
done
