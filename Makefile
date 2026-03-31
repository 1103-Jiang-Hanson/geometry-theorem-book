# Find all .tex files
TEX_FILES := $(wildcard *.tex)
PDF_FILES := $(TEX_FILES:.tex=.pdf)

.PHONY: all clean clean-all build

all: clean-pdfs build clean

build: $(PDF_FILES)

%.pdf: %.tex
	pdflatex -shell-escape -interaction=nonstopmode "$<"
	[ -f $*.pre ] && asy $*-*.asy || true
	pdflatex -shell-escape -interaction=nonstopmode "$<"

clean-pdfs:
	rm -f $(PDF_FILES)

clean:
	rm -f *.aux *.log *.pre *.synctex.gz
	rm -f *-[0-9].asy

clean-all: clean clean-pdfs

.DEFAULT_GOAL := all