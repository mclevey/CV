#!/usr/bin/env bash

pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block+smart --pdf-engine=xelatex --template=cv.tex cv_mclevey.md -o cv_mclevey.pdf

git add . && git commit -m 'routine update' && git push