#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/sources"

check_file "$WORKDIR/app.apk" "app.apk not found! Place your input file there."

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $APKTOOL d -f -o "$DEST" "$WORKDIR/app.apk"

check_status
echo "Saved to: $DEST"
