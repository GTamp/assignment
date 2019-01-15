source countdir.sh
loopstop=0
dircount=$(countdir)

echo "Welcome to Guessing Game! The purpose of this game is to try and guess the number of directories. Go ahead and try it. Take your first guess:"
read guess

while [[ $loopstop -eq 0 ]]
do
	if [[ $guess -eq $(countdir) ]]
	then
		echo "You guessed right! Congratulations!"
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

