#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/app.apk"
DEST="$WORKDIR/dump.txt"

check_file "$SRC" "$SRC not found! Place your input file there."

$AAPT l -a "$SRC" > "$DEST"

check_status
echo "Saved to: $DEST"
