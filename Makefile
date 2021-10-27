.DEFAULT_GOAL := all

    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        PDF_LATEX = /usr/bin/pdflatex
    endif
    ifeq ($(UNAME_S),Darwin)
        PDF_LATEX = /Library/TeX/texbin/pdflatex
    endif

extended:
	@mkdir -p out tmp
	@$(PDF_LATEX) -output-directory tmp extended.tex
	@mv tmp/extended.pdf out/CV-RICHARD-NEAVE-E.pdf
	@rm -rf tmp

compact:
	@mkdir -p out tmp
	@$(PDF_LATEX) -output-directory tmp compact.tex
	@mv tmp/compact.pdf out/CV-RICHARD-NEAVE-C.pdf
	@rm -rf tmp

all:
	@mkdir -p out tmp
	@$(PDF_LATEX) -output-directory tmp compact.tex
	@$(PDF_LATEX) -output-directory tmp extended.tex
	@mv tmp/extended.pdf out/CV-RICHARD-NEAVE-E.pdf
	@mv tmp/compact.pdf out/CV-RICHARD-NEAVE-C.pdf
	@rm -rf tmp


clean:
	@rm -rf tmp out
