
MAIN = grid_monitoring
PRES = presentation

all:    pdf

dvi:    clean_aux
	latex $(MAIN)
	bibtex $(MAIN)
	latex $(MAIN)
	latex $(MAIN)
#	makeindex $(MAIN).nlo -s nomencl.ist -o $(MAIN).nls
#	latex $(MAIN)

one: 
	latex $(MAIN)

bib:
	bibtex $(MAIN)

ps:     dvi
	dvips -t a4 -Ppdf -G0 $(MAIN) -o

pdf:    dvi ps
	ps2pdf $(MAIN).ps $(MAIN).pdf

tgz:    
	tar -zcvf grid_monitoring.tgz *tex Makefile *pdf chapters images extra notes

clean_aux:
	rm -f *.aux 

clean:
	rm -f *.aux *.bbl *.blg *.log *~ \#*\# *.toc *.dvi *.idx *.lof *.nlo *.out *.ps *.lot *.lol *.tgz *.nav *.snm

clobber:	clean
	rm -f *.ps *.pdf

presentation:
	latex $(PRES)
	latex $(PRES)
	dvips -Ppdf -G0 $(PRES) -o
	ps2pdf $(PRES).ps $(PRES).pdf
