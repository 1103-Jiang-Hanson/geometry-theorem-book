# Find all .tex files
TEX_FILES := $(wildcard *.tex)
PDF_FILES := $(TEX_FILES:.tex=.pdf)

.PHONY: all clean clean-all build

all: clean-pdfs build clean

build: $(PDF_FILES)

%.pdf: %.tex
	pdflatex "$<"
	asy "$(<:.tex=-1).asy" 2>/dev/null || true
	pdflatex "$<"

clean-pdfs:
	rm -f $(PDF_FILES)

clean:
	rm -f *.aux *.log *.pre *.synctex.gz *-*.asy *-1.pdf

clean-all: clean clean-pdfs

.DEFAULT_GOAL := all