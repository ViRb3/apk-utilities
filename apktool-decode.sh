#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/sources"

if ! [ -f "$WORKDIR/app.apk" ]; then
    echo "app.apk not found! Place your input file there."
    exit 1
fi

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL d -f -o "$DEST" "$WORKDIR/app.apk"
echo "Saved to: $DEST"
