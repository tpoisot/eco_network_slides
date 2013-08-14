pdf: slides-networks.tex 
	pdflatex --shell-escape slides-networks.tex

clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc


