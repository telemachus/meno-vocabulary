SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex -bibtex-cond

all: meno-vocabulary

meno-vocabulary: meno-vocabulary-titlepage.tex meno-vocabulary.tex \
	vocabulary.bib
	$(LATEXMK) $(FLAGS) meno-vocabulary.tex -jobname=meno-vocabulary

clean:
	- $(RM) *.{aux,bbl,bcf,blg,fdb_latexmk,fls,log,out,pdf,xml}

.PHONY : clean
