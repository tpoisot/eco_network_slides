pdf: slides-networks.tex slides-networks.pdf
	pdflatex slides-networks.tex

clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc


