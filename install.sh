#!/bin/bash
PATH_BLOCKS="/home/andres/.local/bin/statusbar"

kill dwmblocks

# Install dwmblocks
make clean && sudo make install

echo $'\n'

# Delete folder
rm -rf "$PATH_BLOCKS/blocks"

# Copy blocks
mkdir -pv "$PATH_BLOCKS/blocks"

cp -vr blocks ${PATH_BLOCKS}

dwmblocks &

