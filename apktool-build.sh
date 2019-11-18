#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-patched.apk"

if ! [ -d "$WORKDIR/sources" ]; then
    echo "sources directory not found! Run apktool-decode first."
    exit 1
fi

rm "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL b -o "$DEST" "$WORKDIR/sources"

check_status
echo "Saved to: $DEST"
