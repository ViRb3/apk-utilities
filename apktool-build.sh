#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*-sources")
DEST="$WORKDIR/$(basename "$SRC" -sources)-patched.apk"

rm "$DEST" 2 &>/dev/null
$JAVA -jar $APKTOOL b -o "$DEST" "$SRC" "$@"

check_status
echo "Saved to: $DEST"
