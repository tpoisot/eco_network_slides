pdf: slides-networks.tex slides-networks.pdf
	pdflatex --shell-escape slides-networks.tex

clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc


