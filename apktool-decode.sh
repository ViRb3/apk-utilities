#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")
DEST="$WORKDIR/$(basename "$SRC" .apk)-sources"

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL d -f -o "$DEST" "$SRC" "$@"

check_status
echo "Saved to: $DEST"
