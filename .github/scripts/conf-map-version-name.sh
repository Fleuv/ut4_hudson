#!/bin/sh

version="$MAP_VERSION"
number=${version:1}
prefix=${version:0:1}

case "$prefix" in
    "v") echo ::set-env name=MAP_VERSION_NAME::"version $number"
    ;;
    "rc") echo ::set-env name=MAP_VERSION_NAME::"release candidate $number"
    ;;
    "b") echo ::set-env name=MAP_VERSION_NAME::"beta $number"
    ;;
    "a") echo ::set-env name=MAP_VERSION_NAME::"alpha $number"
    ;;
    "t") echo ::set-env name=MAP_VERSION_NAME::"test $number"
    ;;
    *) echo ::set-env name=MAP_VERSION_NAME::"release $number"
esac