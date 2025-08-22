#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")
DEST="$WORKDIR/$(basename "$SRC" .apk)-signed.apk"

rm "$DEST" 2 &>/dev/null || true
"$JAVA" -jar "$APKSIGNER" -a "$SRC" "$@"

echo "Saved to: $DEST"
