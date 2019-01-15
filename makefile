README.md: guessinggame.sh
	> README.md
	echo "# Guessing Game" > README.md
	echo "Below are some information about this project" >> README.md
	echo "- Title: Guessing Game" >> README.md
	echo "- Last 'make' run: $(date +"%T")" >> README.md 
	echo "- Number of lines of code in guessinggame.sh : $(wc -l < guessinggame.sh)"  >> README.md

