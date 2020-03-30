#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/smali"

check_file "$WORKDIR/classes.dex" "classes.dex not found! Place your input file there."

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $BAKSMALI d --use-locals -o "$DEST" "$WORKDIR/classes.dex"

check_status
echo "Saved to: $DEST"
