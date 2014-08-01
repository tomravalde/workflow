# 'Workflow: tools and templates'

The workflow and templates to generate nice documents using knitr, markdown, pandoc and version control.

## Pre-requisites

- [LaTeX](http://www.latex-project.org/)
- [R](http://www.r-project.org/)
- the [knitr package](http://yihui.name/knitr/)
- [pandoc](http://johnmacfarlane.net/pandoc/)
- A text editor! (I use [Vim](http://www.vim.org/).)
- [Git](http://git-scm.com/) (version control)
- Stephan Hennig's LaTeX version control [package](http://www.ctan.org/tex-archive/support/vc)

## Setup

1. Download the contents of this repository into a known location, for example `~/workflow`.

2. In order to keep all the dependencies and templates together in one directory (which can then be kept under version control), I use symlinks so the relevant programs can search the locations they expect for:

		ln -s ~/workflow/tom-style.sty ~/texmf/tex/latex/myStyles/tom-style.sty
		ln -s ~/workflow/tuftemargin.sty ~/texmf/tex/latex/myStyles/tuftemargin.sty
		ln -s ~/workflow/tom.xelatex ~/.pandoc/templates/tom.xelatex

## Usage

To generate a PDF from using `R` and markdown.

1. Initialise a new writing project with an Rmd file in a new directory, e.g. `~/working-directory/working-paper.Rmd`.
2. Copy the Makefile into the working directory: `cp ~/workflow/Makefile ~/working-directory`.
3. Copy the version control files (`vc` and `vc-git.awk`) to the working directory.
4. Write a document using Markdown and knitr format.
5. Knit the file in `R` to generate `working-paper.md`.

		require(knitr)
		knit("working-paper.Rmd")

6. Use the `Makefile` to generate PDF output from the markdown format:

		make pdf

If you don't want to use knitr, you can can write directly to a markdown document, and just use the `Makefile` as in step 6.

### Options

#### Page size

- The default LaTeX page size will be used, unless the YAML metadata contains the following information:

		fullpage: fullpage

Or

		fullpage: tuftemargin

In which case the fullpage package (i.e. narrower margins) or [Tufte](http://www.edwardtufte.com/tufte/) style (large right-hand side margins) will be used.

## Example

The `template` directory gives an example of producing a PDF from Rmd source.
