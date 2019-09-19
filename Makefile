.DEFAULT_GOAL := all

extended:
	@mkdir -p out tmp
	@/Library/TeX/texbin/pdflatex -output-directory tmp extended.tex
	@mv tmp/extended.pdf out/CV-RICHARD-NEAVE-E.pdf
	@rm -rf tmp

compact:
	@mkdir -p out tmp
	@/Library/TeX/texbin/pdflatex -output-directory tmp compact.tex
	@mv tmp/compact.pdf out/CV-RICHARD-NEAVE-C.pdf
	@rm -rf tmp

all:
	@mkdir -p out tmp
	@/Library/TeX/texbin/pdflatex -output-directory tmp compact.tex
	@/Library/TeX/texbin/pdflatex -output-directory tmp extended.tex
	@mv tmp/extended.pdf out/CV-RICHARD-NEAVE-E.pdf
	@mv tmp/compact.pdf out/CV-RICHARD-NEAVE-C.pdf
	@rm -rf tmp


clean:
	@rm -rf tmp out
