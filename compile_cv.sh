#!/usr/bin/env bash

echo -e "[mstk] compiling and publishing cv.md"

set -e 	
mstk pipeline cv .

git add .
git commit -m "routine cv update"
git push