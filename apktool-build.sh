#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/sources"
DEST="$WORKDIR/app-patched.apk"

check_directory "$SRC" "$SRC directory not found! Run apktool-decode first."

rm "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL b -o "$DEST" "$SRC"

check_status
echo "Saved to: $DEST"
