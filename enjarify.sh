#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")
DEST="$WORKDIR/$(basename "$SRC" .apk).jar"

rm "$DEST" 2&> /dev/null
$ENJARIFY -o "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
