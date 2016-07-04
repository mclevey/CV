# John McLevey
# October 28, 2015

## Location of Pandoc support files.
TEMPLATES = /Users/johnmclevey/Documents/pandoc_templates

## Location of your working bibliography file
BIB = /Users/johnmclevey/Documents/bibliography/references.bib

## Location of CSL stylesheet
CSL = /Users/johnmclevey/Documents/bibliography/apsa.csl

# make works backwards, so put your final targets first,
# and work your way back to the start

cv_mclevey.pdf: cv_mclevey.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --latex-engine=xelatex --template=$(TEMPLATES)/cv.tex --filter pandoc-citeproc --csl=$(CSL) --bibliography=$(BIB) -o $@ $<

cv_mclevey.docx: cv_mclevey.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --latex-engine=xelatex --template=$(TEMPLATES)/cv.tex --filter pandoc-citeproc --csl=$(CSL) --bibliography=$(BIB) -o $@ $<
