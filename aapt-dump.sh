#!/bin/bash
. ".config.sh"

if ! [ -f "$WORKDIR/app.apk" ]; then
    echo "app.apk not found! Place your input file there."
    exit
fi
$AAPT l -a "$WORKDIR/app.apk" > "$WORKDIR/dump.txt"
