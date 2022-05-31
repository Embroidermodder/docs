all: printed website clean

printed:
	pdflatex embroidermodder_manual.tex
	bibtex embroidermodder_manual.aux
	pdflatex embroidermodder_manual.tex
	pdflatex embroidermodder_manual.tex

website:
	pandoc about.md -o stor.html
	cat header.html stor.html footer.html > about.html

	pandoc contact.md -o stor.html
	cat header.html stor.html footer.html > contact.html

	pandoc documentation.md -o stor.html
	cat header.html stor.html footer.html > documentation.html

	pandoc index.md -o stor.html
	cat header.html stor.html footer.html > index.html

	pandoc downloads.md -o stor.html
	cat header.html stor.html footer.html > downloads.html

	rm stor.html

clean:
	rm -f embroidermodder_manual.aux
	rm -f embroidermodder_manual.bbl
	rm -f embroidermodder_manual.blg
	rm -f embroidermodder_manual.cp
	rm -f embroidermodder_manual.cps
	rm -f embroidermodder_manual.log
	rm -f embroidermodder_manual.out
	rm -f embroidermodder_manual.toc