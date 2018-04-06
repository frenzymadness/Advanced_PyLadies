#!/bin/bash

# Script which converts all Jupyter Notebooks to HTML format

for notebook in `find ./ -name "*.ipynb" | grep -v "\.ipynb_checkpoints"`;
do
    echo $notebook
    python -m nbconvert --to html $notebook
done
