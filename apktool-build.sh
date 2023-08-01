#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*-sources")
DEST="$WORKDIR/$(basename "$SRC" -sources)-patched.apk"

rm "$DEST" 2 &>/dev/null || true
"$JAVA" -jar "$APKTOOL" b -o "$DEST" "$SRC" "$@"

echo "Saved to: $DEST"
