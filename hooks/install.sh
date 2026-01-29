#!/usr/bin/env bash
#
# Git hooks installer for captain-hook
# This script installs the pre-commit hook into .git/hooks/
#

set -e

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

HOOK_SOURCE="hooks/pre-commit"
HOOK_DEST=".git/hooks/pre-commit"

echo -e "${BLUE}Installing git hooks for captain-hook...${NC}\n"

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo -e "${YELLOW}⚠️  Not in a git repository root. Please run this from the project root.${NC}"
    exit 1
fi

# Check if hook source exists
if [ ! -f "$HOOK_SOURCE" ]; then
    echo -e "${YELLOW}⚠️  Hook source not found: $HOOK_SOURCE${NC}"
    exit 1
fi

# Backup existing hook if present
if [ -f "$HOOK_DEST" ]; then
    BACKUP="${HOOK_DEST}.backup.$(date +%s)"
    echo -e "${YELLOW}Backing up existing hook to: $BACKUP${NC}"
    cp "$HOOK_DEST" "$BACKUP"
fi

# Install the hook
echo -e "${BLUE}Installing pre-commit hook...${NC}"
cp "$HOOK_SOURCE" "$HOOK_DEST"
chmod +x "$HOOK_DEST"

echo -e "${GREEN}✓ Pre-commit hook installed successfully!${NC}\n"

echo -e "${BLUE}Hook features:${NC}"
echo -e "  ✓ Runs linting (ruff check)"
echo -e "  ✓ Checks formatting (ruff format)"
echo -e "  ✓ Runs type checking (mypy)"
echo -e "  ✓ Runs tests (pytest)"
echo -e "  ✓ Auto-fixes linting and formatting issues"
echo -e "  ✓ Attempts fixes with GitHub Copilot CLI on failures"

echo -e "\n${BLUE}Next steps:${NC}"
echo -e "  1. Make a commit to test the hook: ${YELLOW}git commit -m 'test'${NC}"
echo -e "  2. If needed, install GitHub Copilot CLI: ${YELLOW}gh extension install github/gh-copilot${NC}"
echo -e "  3. To bypass the hook temporarily: ${YELLOW}git commit --no-verify${NC}"

echo -e "\n${GREEN}Done!${NC}"
