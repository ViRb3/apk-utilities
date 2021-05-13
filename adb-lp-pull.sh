#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/Modified"

$ADB pull --sync "/sdcard/Android/data/___.lp/files/LuckyPatcher/Modified" "$DEST"

echo "Saved to: $DEST"
