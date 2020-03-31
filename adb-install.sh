#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/app-patched-aligned-debugSigned.apk"

check_file "$SRC" "$SRC not found! Run sign first."

$ADB install "$SRC"

check_status
echo "Installed $SRC"
