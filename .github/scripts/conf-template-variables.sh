#!/bin/sh

version="$MAP_VERSION"
version_name="$MAP_VERSION_NAME"

base_name="$MAP_BASE_NAME"
file_name="$MAP_FILE_NAME"
long_name="$MAP_LONG_NAME"

file_name=sed -e "s/\[MAP_BASE_NAME]/$base_name/" -e "s/\[MAP_VERSION]/$version/"
long_name=sed -e "s/\[MAP_VERSION_NAME]/$version_name/"

echo ::set-env name=MAP_FILE_NAME::"$file_name"
echo ::set-env name=MAP_LONG_NAME::"$long_name"