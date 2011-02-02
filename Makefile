
MAIN = grid_monitoring

all:    pdf

dvi:    clean_aux
	latex $(MAIN)
	bibtex $(MAIN)
	latex $(MAIN)
#	makeindex $(MAIN).nlo -s nomencl.ist -o $(MAIN).nls
#	latex $(MAIN)

one: 
	latex $(MAIN)

bib:
	bibtex $(MAIN)

ps:     dvi
	dvips -Ppdf -G0 $(MAIN) -o

pdf:    dvi ps
	ps2pdf $(MAIN).ps $(MAIN).pdf

tgz:    pdf
	tar -zcvf a1.barad.tgz *tex Makefile *bib *eps *pdf *sty

clean_aux:
	rm -f *.aux 

clean:
	rm -f *.aux *.bbl *.blg *.log *~ \#*\# *.toc *.dvi *.idx *.lof *.nlo *.out *.ps

clobber:	clean
	rm -f *.ps *.pdf




-rw-rw-r-- 1 theofpa theofpa      0 Feb  2 09:25 grid_monitoring.idx
-rw-rw-r-- 1 theofpa theofpa   1110 Feb  2 09:25 grid_monitoring.lof
-rw-rw-r-- 1 theofpa theofpa   1402 Feb  2 09:25 grid_monitoring.nlo
-rw-rw-r-- 1 theofpa theofpa   1640 Feb  2 09:25 grid_monitoring.out
-rw-rw-r-- 1 theofpa theofpa 342878 Feb  2 09:25 grid_monitoring.pdf
-rw-rw-r-- 1 theofpa theofpa 880454 Feb  2 09:25 grid_monitoring.ps
-rw-rw-r-- 1 theofpa theofpa   1606 Feb  2 07:55 grid_monitoring.tex

