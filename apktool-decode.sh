#!/bin/bash
. ".config.sh"

rm -rf "$WORKDIR/sources" 2&> /dev/null
$JAVA -jar $APKTOOL d -f -o "$WORKDIR/sources" "$WORKDIR/app.apk"
