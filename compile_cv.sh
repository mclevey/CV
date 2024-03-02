#!/usr/bin/env bash

echo -e ✅ PRODUCING OVERVIEW TABLES
python src/produce-overview-tables.py

echo -e ✅ COMPILING CV
pandoc cv.md -o cv.pdf --template=templates_and_tables/template-cv.tex --pdf-engine=xelatex

echo -e ✅ PUSHING TO GIT REPO
git add . && git commit -m 'routine cv update' && git push

echo -e ✅ COPYING FILES TO MUN-APPLICATION
cp cv.pdf ~/Vaults/EC2/applications/mun-2024/_application/