#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app.dex"

check_file "$WORKDIR/app.jar" "app.jar not found! Place your input file there."

$DX --dex --min-sdk-version 26 --output "$DEST" "$WORKDIR/app.jar"

check_status
echo "Saved to: $DEST"
