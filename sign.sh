#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*-patched.apk")
DEST="$WORKDIR/$(basename "$SRC" -patched.apk)-patched-signed.apk"

rm "$DEST" 2 &>/dev/null || true
$JAVA -jar $APKSIGNER -a "$SRC" "$@"

echo "Saved to: $DEST"
