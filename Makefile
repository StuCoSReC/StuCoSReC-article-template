PDFLATEX:=pdflatex
BIBTEX:=bibtex

TEX_DOCUMENT:=scores-template.tex

all: build

build:
	$(PDFLATEX) $(TEX_DOCUMENT)
	$(BIBTEX)   $(TEX_DOCUMENT)
	$(PDFLATEX) $(TEX_DOCUMENT)
	$(PDFLATEX) $(TEX_DOCUMENT)

clean:
	-rm -f *.aux *.vrb *.toc *.snm *.out *.nav *.log *.blg *.bbl *.gz
