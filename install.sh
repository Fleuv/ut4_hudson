#!/bin/sh

ws="$(dirname "$0")"
dir="$1"
bn="${2:-ut4_hudson}"
cd "$ws"

if [ ! -d "$dir" ]; then
    echo "The target directory is not supplied or does not exists, received: $dir"
    exit 2
fi

ln -s "$ws/maps/$bn.*" "$dir/maps/"

ln -s "$ws/models/$bn" "$dir/models/"

ln -s "$ws/scripts/$bn.*" "$dir/scripts/"

ln -s "$ws/sound/$bn" "$dir/sound/"

ln -s "$ws/textures/$bn" "$dir/textures/"

sl="$dir/scripts/shaderlist.txt"

if grep -Fxq "$bn" "$sl"; then
    echo "Skipping: update on shaderlist, shader already present"
else
    echo "$bn" >> "$sl"
fi