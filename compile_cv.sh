#!/usr/bin/env bash

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print colored messages
echo -e "${YELLOW}[mstk] compiling and publishing cv.md${NC}"

set -e
mstk pipeline cv .

echo -e "${YELLOW}[mstk] committing changes to git repo: curriculum-vitae${NC}"
git add .
git commit -m "routine cv update"
git push