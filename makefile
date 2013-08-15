viewer = xpdf

pdf: slides-networks.tex 
	pdflatex --shell-escape slides-networks.tex

view:
	$(viewer) slides-networks.pdf

clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc
	rm *.vrb


