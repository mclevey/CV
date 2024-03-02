#!/usr/bin/env bash

echo -e ✅ Producing overview tables
python src/produce-overview-tables.py

echo -e ✅ Compiling CV
pandoc cv.md -o cv.pdf --template=templates_and_tables/template-cv.tex --pdf-engine=xelatex

echo -e ✅ Pushing to git repo
git add . && git commit -m 'routine cv update' && git push

echo -e ✅ Copying files to mun-application
cp cv.pdf ~/Vaults/EC2/applications/mun-2024/_application/