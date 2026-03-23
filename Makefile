NAME = Template

.PHONY: all clean clean-all build

all: build clean

build: $(NAME).tex
	pdflatex $(NAME).tex
	asy $(NAME)-1.asy
	pdflatex $(NAME).tex

clean:
	rm -f $(NAME).aux $(NAME).log $(NAME).pre $(NAME).synctex.gz $(NAME)-*.asy $(NAME)-*.pdf

clean-all: clean
	rm -f $(NAME).pdf

# Default target
.DEFAULT_GOAL := all