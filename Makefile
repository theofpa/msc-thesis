
MAIN = grid_monitoring

all:    pdf

dvi:    clean_aux
	latex $(MAIN)
	bibtex $(MAIN)
	latex $(MAIN)
#	makeindex $(MAIN).nlo -s nomencl.ist -o $(MAIN).nls
	latex $(MAIN)

one: 
	latex $(MAIN)

bib:
	bibtex $(MAIN)

ps:     dvi
	dvips -Ppdf -G0 $(MAIN) -o

pdf:    dvi ps
	ps2pdf $(MAIN).ps $(MAIN).pdf

tgz:    pdf
	tar -zcvf grid_monitoring
	.tgz *tex Makefile *bib *eps *pdf *sty

clean_aux:
	rm -f *.aux 

clean:
	rm -f *.aux *.bbl *.blg *.log *~ \#*\# *.toc *.dvi

clobber:	clean
	rm -f *.ps *.pdf
