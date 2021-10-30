.DEFAULT_GOAL := cv

    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        PDF_LATEX = /usr/bin/pdflatex
    endif
    ifeq ($(UNAME_S),Darwin)
        PDF_LATEX = /Library/TeX/texbin/pdflatex
    endif

cv:
	@mkdir -p out tmp
	@$(PDF_LATEX) -output-directory tmp cv.tex
	@mv tmp/cv.pdf out/richard-neave-curriculum-vitae.pdf
	@rm -rf tmp

clean:
	@rm -rf tmp out
