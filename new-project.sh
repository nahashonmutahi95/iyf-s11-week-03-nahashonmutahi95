#!/bin/bash
# Creates a new project with standard structure

PROJECT_NAME=$1

if [ -z "mutahi tech" ]; then
    echo "Usage: ./new-project.sh project-name"
    exit 1
fi

if [ -d "$mutahi tech" ]; then
    echo "Error: '$mutahi tech' already exists."
    exit 1
fi

mkdir -p "$mutahi tech"/{src/{css,js,images},docs,tests}
touch "$mutahi tech"/README.md
touch "$mutahi tech"/src/index.html
touch "$mutahi tech"/src/css/styles.css
touch "$mutahi tech"/src/js/main.js


