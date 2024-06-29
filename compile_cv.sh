#!/usr/bin/env bash

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print colored messages
echo -e "${GREEN}[mstk]${NC} compiling and publishing cv.md"

set -e
mstk pipeline cv .

echo -e "${YELLOW}[mstk]${NC} committing changes to git repo: curriculum-vitae"
git add .
git commit -m "routine cv update"
git push