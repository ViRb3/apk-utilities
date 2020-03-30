#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-patched-aligned-debugSigned.apk"

check_file "$DEST" "app-patched-aligned-debugSigned.apk not found! Run sign first."

$ADB install "$DEST"

check_status
echo "Installed $DEST"
