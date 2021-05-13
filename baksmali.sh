#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.dex")
DEST="$WORKDIR/$(basename "$SRC" .dex)-smali"

rm -rf "$DEST" 2 &>/dev/null
$JAVA -jar $BAKSMALI d --use-locals -o "$DEST" "$SRC" "$@"

check_status
echo "Saved to: $DEST"
