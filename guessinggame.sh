function countdir {	#function that counts the # of directories

        local dircount=0

        dircount=$(ls -l | egrep "^d" | wc -l)	#count the # of results that ls -l returns and start with d (i.e directory instead of file which starts with -)

        echo "$dircount"

}

loopstop=0 #flag to raise when the player guesses right

echo "Welcome to Guessing Game! The purpose of this game is to try and guess the number of sub-directories in the current working directory. Go ahead and try it. Take your first guess:"
read guess	#read the playes input given in the terminal

while [[ $loopstop -eq 0 ]] #while flag is down i.e. player hasn't guessed correctly
do
	if [[ $guess -eq $(countdir) ]]	#if players guess matches the functions calculation
	then
		echo "You guessed right! Congratulations!"
		echo "The game has ended."
		loopstop=1	#raise the flag to break the loop
	elif [[ $guess -gt $(countdir) ]]	#if players guess is to high
	then
		echo "Too high! Guess again...:"
		read guess
	else	#if players guess is too low
		echo "Too low! Guess again...:"
		read guess
	fi
done
