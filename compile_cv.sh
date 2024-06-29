#!/usr/bin/env bash

echo -e "[mstk] compiling and publishing cv.md"

set -e 	
mstk pipeline cv .

echo -e "[mstk] commiting changes to git repo: curriculum-vitae"
git add .
git commit -m "routine cv update"
git push