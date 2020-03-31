#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/smali"
DEST="$WORKDIR/classes-patched.dex"

check_directory "$SRC" "$SRC directory not found! Run baksmali first."

rm "$DEST" 2&> /dev/null
$JAVA -jar $SMALI a -o "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
