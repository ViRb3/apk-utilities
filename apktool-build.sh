#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-patched.apk"

check_directory "$WORKDIR/sources" "sources directory not found! Run apktool-decode first."

rm "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL b -o "$DEST" "$WORKDIR/sources"

check_status
echo "Saved to: $DEST"
