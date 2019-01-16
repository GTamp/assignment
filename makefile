all: README.md

timestamp=$(shell date '+%Y-%m-%d %H:%M:%S')
alllines=$(shell wc -l < guessinggame.sh)
codelines=$(shell echo ${alllines}-1 | bc)

README.md: guessinggame.sh
	> README.md
	echo "# Guessing Game" > README.md
	echo "## Below are some information about this project" >> README.md
	echo "- Title: **Guessing Game**" >> README.md
	echo "- Last '*make*' run: **${timestamp}**" >> README.md
	echo "- Number of lines of code in guessinggame.sh : **${alllines}**"  >> README.md
