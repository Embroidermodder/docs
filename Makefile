all:
	pdflatex embroidermodder_manual.tex
	bibtex embroidermodder_manual.aux
	pdflatex embroidermodder_manual.tex
	pdflatex embroidermodder_manual.tex

	pandoc about.md -o stor.html
	cat header.html stor.html footer.html > about.html

	pandoc contact.md -o stor.html
	cat header.html stor.html footer.html > contact.html

	pandoc documentation.md -o stor.html
	cat header.html stor.html footer.html > documentation.html
	pandoc documentation.md embroidermodder_1.90.0_user_manual.pdf

	pandoc README_libembroidery.md -o stor.html
	cat header.html stor.html footer.html > libembroidery.html
	pandoc README_libembroidery.md libembroidery_0.1_manual.pdf

	pandoc index.md -o stor.html
	cat header.html stor.html footer.html > index.html

	pandoc downloads.md -o stor.html
	cat header.html stor.html footer.html > downloads.html

	pandoc README_embroidermodder.md embroidermodder_1.90.0_developer_notes.pdf

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