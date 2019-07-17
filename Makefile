.DEFAULT_GOAL := extended

extended:
	@mkdir -p out tmp
	@pdflatex -output-directory tmp extended.tex
	@mv tmp/main.pdf out/CV-RICHARD-NEAVE-E.pdf
	@rm -rf tmp

compact:
	@mkdir -p out tmp
	@pdflatex -output-directory tmp compact.tex
	@mv tmp/main.pdf out/CV-RICHARD-NEAVE-C.pdf
	@rm -rf tmp


clean:
	@rm -rf tmp out
