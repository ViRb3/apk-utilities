#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-patched-aligned-debugSigned.apk"

if ! [ -f "$DEST" ]; then
    echo "app-patched-aligned-debugSigned.apk not found! Run sign first."
    exit 1
fi

$ADB install "$DEST"
echo "Installed $DEST"
