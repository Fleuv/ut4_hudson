#!/bin/sh

version="$MAP_VERSION"
base_name="$MAP_BASE_NAME"
file_name="$MAP_FILE_NAME"

file_name=sed -e "s/\[MAP_BASE_NAME]/$base_name/" -e "s/\[MAP_VERSION]/$version/"

echo ::set-env name=MAP_FILE_NAME::"$file_name"