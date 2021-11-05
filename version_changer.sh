#!/bin/bash

VER1=$(cat build.gradle | grep 1.0.0-rc* | cut -d' ' -f2 | grep -o '[0-9]\+' | tail -1)
VER2=$((VER1+1))

VER_1="1.0.0-rc$VER1"
VER_2="1.0.0-rc$VER2"

sed -i '.bak' "s/$VER_1/$VER_2/g" "build.gradle"

echo "From version ${VER_1}"
echo "  To version ${VER_2}"

