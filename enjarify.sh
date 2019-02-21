#!/bin/bash
. ".config.sh"

if ! [ -f "$WORKDIR/app.apk" ]; then
    echo "app.apk not found! Place your input file there."
    exit 1
fi
rm "$WORKDIR/app.jar" 2&> /dev/null
$ENJARIFY -o "$WORKDIR/app-enjarify.jar" "$WORKDIR/app.apk"
