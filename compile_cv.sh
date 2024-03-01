#!/usr/bin/env bash

echo -e "\033[0;32mProducing overview tables...\033[0m"
python src/produce-overview-tables.py

echo -e "\033[0;32mCompiling CV...\033[0m"
pandoc cv.md -o cv.pdf --template=templates_and_tables/template-cv.tex --pdf-engine=xelatex

echo -e "\033[0;32mCopying files to mun-application...\033[0m"
cp cv.pdf /Users/johnmclevey/Vaults/EC2/mun-application/_application/

echo -e "\033[0;32mPushing to git repo...\033[0m"
git add . && git commit -m 'routine cv update' && git push

echo -e "\033[0;32mDone.\033[0m"

