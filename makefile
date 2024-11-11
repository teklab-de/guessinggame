# Makefile to generate the README.md file

DATE_TIME=$(shell date "+%Y-%m-%d %H:%M:%S")

LINES=$(shell wc -l < guessinggame.sh)

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(DATE_TIME)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(LINES)" >> README.md

run:
	bash guessinggame.sh
