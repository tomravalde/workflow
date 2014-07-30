# 'Workflow: tools and templates'

The workflow and templates to generate nice documents using knitr, markdown, pandoc and version control.

## Pre-requisites

- LaTeX
- R
- the knitr package
- pandoc
- A text editor! (I use Vim.)

## Setup

1. Download the contents of this repository into a known location, for example `~/workflow`.

2. In order to keep all the dependencies and templates together in one directory (which can then be kept under version control), I use symlinks so the relevant programs can search the locations they expect for ...

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

### Options

#### Page size

- The default LaTeX page size will be used, unless the YAML metadata contains the following information:

		fullpage: fullpage

Or

		fullpage: tuftemargin

In which case the fullpage package (i.e. narrower margins) or [Tufte](http://www.edwardtufte.com/tufte/) style (large right-hand side margins) will be used.

#### Version control

#### Report type

### Make the file

1. See the `Makefile`.

## Notes
