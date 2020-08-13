readme.md : guessinggame.sh
	echo "Guessing game of files: "> readme.md
	wc - l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	date  >> readme.md