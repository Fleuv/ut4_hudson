#!/bin/sh

cd "$1"

## Environmental variables

base_name="$MAP_BASE_NAME"
file_name="$MAP_FILE_NAME"
version_name="$MAP_VERSION_NAME"

## Function declarations

conf_file_name() {
    in="$1"
    out="$2"
    shift; shift
    exts=("$@")

    if [ ${#exts[@]} -eq 0 ]; then
        if [ -d "$in" ]; then
            cp -r "$in" "$out"
        fi
    else
        for ext in $exts; do
            if [ -e "$in$ext" ]; then
                cp "$in$ext" "$out$ext"
            fi
        done
    fi
}

conf_file_content() {
    in="$1"
    search="$2"
    replace="$3"

    if [ -e "$1" ]; then
        sed -e "s/$search/$replace/" $in > $in
    fi
}

## Main executions

# Configure the levelshot
conf_file_name "levelshots/$base_name" "pk3/levelshots/$file_name" "jpg", "tga", "TGA"

# Configure the minimap
conf_file_name "maps/$base_name" "pk3/maps/$file_name" "tga", "TGA"

# Configure the models
# TODO: replace texture paths in all material (.mtl) files
#conf_file_name "models/$base_name" "pk3/models/$file_name"

# Configure the scripts
conf_file_name "scripts/$base_name" "pk3/scripts/$file_name" "shader", "arena"
conf_file_content "pk3/scripts/$file_name.arena" "$base_name" "$file_name"
conf_file_content "pk3/scripts/$file_name.arena" "\[MAP_VERSION_NAME]" "$version_name"
# Use this instead for the shader file, when models are configured:
#conf_file_content "pk3/scripts/$file_name.shader" "$base_name" "$file_name"
conf_file_content "pk3/scripts/$file_name.shader" "textures\/$base_name" "textures\/$file_name"

# Configure the sounds
conf_file_name "sound/$base_name" "pk3/sound/$file_name"

# Configure the textures
conf_file_name "textures/$base_name" "pk3/textures/$file_name"