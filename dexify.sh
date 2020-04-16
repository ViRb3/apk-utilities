#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.jar")
DEST="$WORKDIR/$(basename "$SRC" .jar).dex"

$DX --dex --min-sdk-version 26 --output "$DEST" "$SRC" "$@"

check_status
echo "Saved to: $DEST"
