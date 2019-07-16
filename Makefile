.DEFAULT_GOAL := pdf

pdf:
	@mkdir -p out tmp
	@pdflatex -output-directory tmp main.tex
	@mv tmp/main.pdf out/CV-RICHARD-NEAVE.pdf
	@rm -rf tmp

clean:
	@rm -rf tmp out
