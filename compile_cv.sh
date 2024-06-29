#!/usr/bin/env bash

set -e
GREEN='\033[0;32m'
YELLOW_BOLD='\033[1;33m'
YELLOW_REG='\033[0;33m'
NOCOLOR='\033[0m'

echo -e "${YELLOW_BOLD}[mstk]${YELLOW_REG} compiling and publishing cv.md${NOCOLOR}"
mstk pipeline cv .

echo -e "${YELLOW_BOLD}[mstk]${YELLOW_REG} committing changes to git repo: curriculum-vitae${NOCOLOR}"
git add . && git commit -m "routine cv update" && git push