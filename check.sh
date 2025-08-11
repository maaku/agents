#!/bin/sh
set -e

# Basic validation suite - add project-specific checks as needed

# Check for required binaries
if ! command -v markdownlint-cli2 >/dev/null 2>&1; then
    echo "Error: markdownlint-cli2 is not installed" >&2
    exit 1
fi
MARKDOWNLINT="markdownlint-cli2"

if ! command -v shellcheck >/dev/null 2>&1; then
    echo "Error: shellcheck is not installed" >&2
    exit 1
fi
SHELLCHECK="shellcheck"

# Check for markdown files with syntax issues
git ls-files --cached --others --exclude-standard '*.md' | xargs -r "$MARKDOWNLINT"

# Check for shell scripts with syntax issues
git ls-files --cached --others --exclude-standard '*.sh' | xargs -r "$SHELLCHECK"

# EOF
