## Put this Makefile in your project directory---i.e., the directory
## containing the paper you are writing. Assuming you are using the
## rest of the toolchain here, you can use it to create .html, .tex,
## and .pdf output files (complete with bibliography, if present) from
## your markdown file. 
## -	Change the paths at the top of the file as needed.
## -	Using `make` without arguments will generate html, tex, and pdf 
## 	output files from all of the files with the designated markdown
##	extension. The default is `.md` but you can change this. 
## -	You can specify an output format with `make tex`, `make pdf` or 
## - 	`make html`. 
## -	Doing `make clean` will remove all the .tex, .html, and .pdf files 
## 	in your working directory. Make sure you do not have files in these
##	formats that you want to keep!

## Markdown extension (e.g. md, markdown, mdown).
MEXT = md

## All markdown files in the working directory
SRC = $(wildcard *.$(MEXT))

## Location of Pandoc support files.
PREFIX = /home/tr608/.pandoc

## Location of your working bibliography file
BIB = /home/tr608/ImpCol/PhD/my-refs.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
#CSL = apsa


PDFS=$(SRC:.md=.pdf)
HTML=$(SRC:.md=.html)
TEX=$(SRC:.md=.tex)

all:	$(PDFS) $(HTML) $(TEX)

pdf:	clean $(PDFS)
html:	clean $(HTML)
tex:	clean $(TEX)

# Run version control shell-script vc.sh to update vc.tex to include Git revision identifiers in the output

%.html:	%.md
#	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html -S --template=$(PREFIX)/templates/html.template --css=$(PREFIX)/marked/kultiad-serif.css --filter pandoc-citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<
#	pandoc --bibliography=$(BIB) -o $@ $<

%.tex:	%.md
#	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s -S --latex-engine=pdflatex --template=$(PREFIX)/templates/latex.template --filter pandoc-citeproc --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o $@ $<
#	pandoc --latex-engine=xelatex --template=$(PREFIX)/templates/default.latex --bibliography=$(BIB) -o $@ $<
	pandoc --latex-engine=xelatex --template=$(PREFIX)/templates/default.latex --bibliography=$(BIB) -o $@ $<

%.pdf:	%.md
	sh vc
	pandoc --latex-engine=xelatex --template=$(PREFIX)/templates/xelatex.template --filter pandoc-citeproc --bibliography=$(BIB) -o $@ $<

clean:
#	rm -f *.html *.pdf *.tex
