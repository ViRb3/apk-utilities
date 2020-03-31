#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/classes.dex"
DEST="$WORKDIR/smali"

check_file "$SRC" "$SRC not found! Place your input file there."

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $BAKSMALI d --use-locals -o "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
