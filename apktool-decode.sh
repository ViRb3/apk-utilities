#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")
DEST="$WORKDIR/$(basename "$SRC" .apk)-sources"

rm -rf "$DEST" 2 &>/dev/null || true
$JAVA -jar $APKTOOL d -f -o "$DEST" "$SRC" "$@"

echo "Saved to: $DEST"
