#!/bin/sh
set -e
ANCHORC="anchorc"
CONFIG_DIR="$HOME/.config/buged"
mkdir -p "$CONFIG_DIR"
$ANCHORC config.anc -o config.c
cc -O2 -dynamiclib config.c -o "$CONFIG_DIR/config.dylib"
echo "Installed config.dylib to $CONFIG_DIR"
