#!/bin/sh
REPOSITORY_URL=$(git ls-remote --get-url) 
REPOSITORY_PROJECT=$(echo "$REPOSITORY_URL" | sed 's/.*\/\(.*\)\.git/\1/')
REPOSITORY_USERNAME=$(echo "$REPOSITORY_URL" | sed 's/.*github.com[/:]\([^/]*\)\/.*/\1/')

# backup original README
if [ ! -f README.org.md ]; then
    cp README.md README.org.md
fi

# replace placeholders in README.template.md and write to README.md
sed -e "s/{{REPOSITORY_USERNAME}}/$REPOSITORY_USERNAME/g" \
    -e "s/{{REPOSITORY_PROJECT}}/$REPOSITORY_PROJECT/g" \
    README.template.md > README.md