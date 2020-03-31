#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/app.apk"
DEST="$WORKDIR/sources"

check_file "$SRC" "$SRC not found! Place your input file there."

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL d -f -o "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
