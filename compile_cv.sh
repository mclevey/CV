#!/usr/bin/env bash

set -e 

echo -e "✅ PRODUCING OVERVIEW TABLES"
python src/produce-overview-tables.py

echo -e "✅ COMPILING CV (PDF & HTML)"
pandoc cv.md -o cv.pdf --template=templates_and_tables/template-cv.tex --pdf-engine=xelatex
pandoc cv.md -o cv-web.md --template=templates_and_tables/template-cv.md

echo -e "✅ COPYING CV (HTML) TO GITHUB WEBSITE REPO"
mv cv-web.md ~/Vaults/EC2/websites/mclevey.github.io-source/pages/cv-web.qmd

echo -e "✅ PUSHING CV GITHUB REPOS"
git add . && git commit -m 'routine cv update' && git push

cd ~/Vaults/EC2/websites/mclevey.github.io-source/ && quarto render

echo -e "✅ COPYING SITE FILES TO PUBLIC DIRECTORY"
cp -r ~/Vaults/EC2/websites/mclevey.github.io-source/_site/* ~/Vaults/EC2/websites/mclevey.github.io

echo -e "✅ PUSHING WEBSITE GITHUB REPO"
cd ~/Vaults/EC2/websites/ && git add . && git commit -m 'routine cv update' && git push






# #!/usr/bin/env bash

# echo -e "✅ PRODUCING OVERVIEW TABLES"
# python src/produce-overview-tables.py

# echo -e "✅ COMPILING CV (PDF & HTML)"
# pandoc cv.md -o cv.pdf --template=templates_and_tables/template-cv.tex --pdf-engine=xelatex
# pandoc cv.md -o cv-web.md --template=templates_and_tables/template-cv.md

# echo -e "✅ COPYING CV (HTML) TO GITHUB WEBSITE REPO"
# mv cv-web.md ~/Vaults/EC2/websites/mclevey.github.io-source/pages/cv-web.qmd

# echo -e "✅ PUSHING CV GITHUB REPOS"
# git add . && git commit -m 'routine cv update' && git push

# cd ~/Vaults/EC2/websites/mclevey.github.io-source/ && quarto render

# cp -r ~/Vaults/EC2/websites/mclevey.github.io-source/_site/* ~/Vaults/EC2/websites/mclevey.github.io
# cd ~/Vaults/EC2/websites/ && git add . && git commit -m 'routine cv update' && git push
