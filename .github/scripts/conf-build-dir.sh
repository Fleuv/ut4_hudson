#!/bin/sh

cd "$1"

mkdir pk3
mkdir pk3/levelshots
mkdir pk3/maps
mkdir pk3/models
mkdir pk3/scripts
mkdir pk3/sound
mkdir pk3/textures


echo "Created build directory structure:"
find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"