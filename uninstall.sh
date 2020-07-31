#!/bin/bash
PATH_BLOCKS="/home/andres/.bin/statusbar"
# Uninstall dwmblocks
make clean && sudo make uninstall

echo $'\n'

# Copy blocks
rm -vrf $PATH_BLOCKS

