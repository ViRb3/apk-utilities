#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")
DEST="$WORKDIR/$(basename "$SRC" .apk).jar"

rm "$DEST" 2 &>/dev/null || true
"$ENJARIFY" -o "$DEST" "$SRC" "$@"

echo "Saved to: $DEST"
