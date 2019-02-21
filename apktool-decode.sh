#!/bin/bash
. ".config.sh"

if ! [ -f "$WORKDIR/app.apk" ]; then
    echo "app.apk not found! Place your input file there."
    exit 1
fi
rm -rf "$WORKDIR/sources" 2&> /dev/null
$JAVA -jar $APKTOOL d -f -o "$WORKDIR/sources" "$WORKDIR/app.apk"
