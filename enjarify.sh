#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/app.apk"
DEST="$WORKDIR/app-enjarify.jar"

check_file "$SRC" "$SRC not found! Place your input file there."

rm "$DEST" 2&> /dev/null
$ENJARIFY -o "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
