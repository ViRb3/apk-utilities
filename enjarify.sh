#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-enjarify.jar"

check_file "$WORKDIR/app.apk" "app.apk not found! Place your input file there."

rm "$DEST" 2&> /dev/null
$ENJARIFY -o "$DEST" "$WORKDIR/app.apk"

check_status
echo "Saved to: $DEST"
