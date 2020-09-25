#!/bin/sh

version="$MAP_VERSION"
number=${version:1}
prefix=${version:0:1}

case "$prefix" in
    "v") name="version $number"
    ;;
    "rc") name="release candidate $number"
    ;;
    "b") name="beta $number"
    ;;
    "a") name="alpha $number"
    ;;
    "t") name="test $number"
    ;;
    *) name="release $number"
esac

echo "Setting MAP_VERSION_NAME to $name"
echo ::set-env name=MAP_VERSION_NAME::"$name"