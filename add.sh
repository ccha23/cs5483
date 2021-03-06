#!/bin/bash
for cmd in "cp ../source/Tutorial7/mnist.zip _build/html/Tutorial7/" "cp ../source/Tutorial4/util.py _build/html/Tutorial4/" "cp ../source/Tutorial8/util.py _build/html/Tutorial8/" "cp ../source/Tutorial9/util.py _build/html/Tutorial9/"
do
    read -r -p "${cmd}?[Y/n] " input

    case $input in
        [yY][eE][sS]|[yY]|'')
    echo "Executing..."
    eval $cmd
    ;;
        [nN][oO]|[nN])
    echo "Skipped..."
        ;;
        *)
    echo "Invalid input..."
    exit 1
    ;;
    esac
done