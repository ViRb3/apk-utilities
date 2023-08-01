#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")
DEST="$WORKDIR/$(basename "$SRC" .apk)-aapt.txt"

"$AAPT" l -a "$SRC" >"$DEST"

echo "Saved to: $DEST"
