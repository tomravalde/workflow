# 'Workflow: tools and templates'

The workflow and templates to generate nice documents using knitr, markdown, LaTeX, pandoc (all under version control).

## Pre-requisites

- [LaTeX](http://www.latex-project.org/)
- [R](http://www.r-project.org/)
- the [knitr package](http://yihui.name/knitr/)
- [pandoc](http://johnmacfarlane.net/pandoc/)
- A text editor! (I use [Vim](http://www.vim.org/).)
- [Git](http://git-scm.com/) (version control)
- Stephan Hennig's LaTeX version control [package](http://www.ctan.org/tex-archive/support/vc)

## Dependencies

- `tom-style.sty` is where I put code to load relevant LaTeX packages etc.
- `tom.xelatex` is the template which pandoc uses to convert a Markdown document to TeX code. The pandoc documentation explains how these work [here](http://pandoc.org/demo/example9/templates.html).
- `template/custom-local.sty` loads any additional LaTeX packages for a specific document.
- BONUS: `elsevier.xelatex` is a template for writing manuscripts to be submitted to Elsevier journals.

## Setup

1. Download the contents of this repository into a known location, for example `~/workflow`.

2. In order to keep all the dependencies and templates together in one directory (which can then be kept under version control), I use symlinks so pandoc and LaTeX can search the locations they expect for the dependencies.

		ln -s ~/workflow/tom-style.sty ~/texmf/tex/latex/myStyles/tom-style.sty
		ln -s ~/workflow/tom.xelatex ~/.pandoc/templates/tom.xelatex

I can then come back the workflow/ directory and make edits to the dependencies, which will be automatically updated in their linked-to locations.

## Writing a document and building a PDF

The contents of the [template/](template) subdirectory will build the [template.pdf](template/paper.pdf) document. To generate a PDF from using R and markdown.

1. Initialise a new writing project with an Rmd file in a new directory, e.g. `~/working-directory/paper.Rmd`.
2. Copy `build-pdf.sh` into the working directory.
3. Copy the version control files (`vc` and `vc-git.awk`) to the working directory.
4. Write a document using R-markdown syntax (e.g. paper.Rmd)
5. Run `build-pdf.sh`. This will use R to 'knit' the Rmd file into a md file, and then use pandoc to covert the md file into a PDF using LaTeX. It will also open the PDF and a word count (as a HTML file).

## More information

Please email [Tom Ravalde](mailto:thomas.ravald08@imperial.ac.uk).
