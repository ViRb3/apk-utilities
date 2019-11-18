#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/dump.txt"

if ! [ -f "$WORKDIR/app.apk" ]; then
    echo "app.apk not found! Place your input file there."
    exit 1
fi

$AAPT l -a "$WORKDIR/app.apk" > "$DEST"

check_status
echo "Saved to: $DEST"
