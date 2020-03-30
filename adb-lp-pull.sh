#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/Modified"

$ADB pull --sync "/sdcard/Android/data/___.lp/files/LuckyPatcher/Modified" "$DEST"

check_status
echo "Saved to: $DEST"
