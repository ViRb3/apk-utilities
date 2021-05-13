#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*-smali")
DEST="$WORKDIR/$(basename "$SRC" -smali)-patched.dex"

rm "$DEST" 2 &>/dev/null || true
$JAVA -jar $SMALI a -o "$DEST" "$SRC" "$@"

echo "Saved to: $DEST"
