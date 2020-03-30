#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/dump.txt"

check_file "$WORKDIR/app.apk" "app.apk not found! Place your input file there."

$AAPT l -a "$WORKDIR/app.apk" > "$DEST"

check_status
echo "Saved to: $DEST"
