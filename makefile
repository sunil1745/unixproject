all: README.md  date.sh number.sh

README.md:
	
	touch README.md
	echo "# UNIX PROJECT" > README.md
date.sh: date.sh
	echo "date and time are :" >> README.md
	date >> README.md

number.sh:
	echo "\n number of lines are :" >> README.md
	wc -l  guessinggame.sh | egrep -o ."[0-9]+" >> README.md
clean:
	rm date.sh
	rm number.sh
	
