all:
	makeinfo --html embroidermodder_manual.texi
	makeinfo --plaintext embroidermodder_manual.texi > embroidermodder_manual.txt
	makeinfo --pdf embroidermodder_manual.texi
