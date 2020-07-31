#!/bin/bash
PATH_BLOCKS="/home/andres/.bin/statusbar"
# Install dwmblocks
make clean && sudo make install

echo $'\n'

# Copy blocks
mkdir -pv "$PATH_BLOCKS/blocks"
rsync -av blocks $PATH_BLOCKS

