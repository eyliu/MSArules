pdf: *.tex
	sh ./vc
	pdflatex rules.tex
	pdflatex rules.tex