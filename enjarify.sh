#!/bin/bash
. ".config.sh"

rm "$WORKDIR/app.jar" 2&> /dev/null
$ENJARIFY -o "$WORKDIR/app-enjarify.jar" "$WORKDIR/app.apk"
