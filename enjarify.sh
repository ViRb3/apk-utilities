#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-enjarify.jar"

if ! [ -f "$WORKDIR/app.apk" ]; then
    echo "app.apk not found! Place your input file there."
    exit 1
fi

rm "$DEST" 2&> /dev/null
$ENJARIFY -o "$DEST" "$WORKDIR/app.apk"
echo "Saved to: $DEST"
