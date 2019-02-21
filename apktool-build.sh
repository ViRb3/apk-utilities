#!/bin/bash
. ".config.sh"

if ! [ -d "$WORKDIR/sources" ]; then
    echo "sources directory not found! Run apktool-decode first."
    exit 1
fi
rm "$WORKDIR/app-patched.apk" 2&> /dev/null
$JAVA -jar $APKTOOL b -o "$WORKDIR/app-patched.apk" "$WORKDIR/sources"
