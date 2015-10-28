# John McLevey
# October 28, 2015

# This is a very minimal make file that you can use to knit your
# Rmarkdown files into pandoc markdown files, which can then be
# converted into PDF, html, or docx using pandoc. You will need to
# edit the file paths at the start of the file.

# While it is possible to write a more abstract Makefile that
# can easily be dropped into different projects, this one
# references specific files that might be in your directory.
# That means you will also have to edit file names for each project
# that you use this Makefile for.

# You can reference the output file with: $@
# You can reference the input file with : $<

## Location of Pandoc support files.
TEMPLATES = /Users/johnmclevey/Documents/pandoc_templates

## Location of your working bibliography file
BIB = /Users/johnmclevey/Documents/bibliography/references.bib

## Location of CSL stylesheet
CSL = /Users/johnmclevey/Documents/bibliography/apsa.csl

# make works backwards, so put your final targets first,
# and work your way back to the start

cv.pdf: cv.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --latex-engine=pdflatex --template=$(TEMPLATES)/cv.tex --filter pandoc-citeproc --csl=$(CSL) --bibliography=$(BIB) -o $@ $<
