#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/app.jar"
DEST="$WORKDIR/classes.dex"

check_file "$SRC" "$SRC not found! Place your input file there."

$DX --dex --min-sdk-version 26 --output "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
