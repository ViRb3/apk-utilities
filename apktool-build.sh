#!/bin/bash
. ".config.sh"

rm "$WORKDIR/app-patched.apk" 2&> /dev/null
$JAVA -jar $APKTOOL b -o "$WORKDIR/app-patched.apk" "$WORKDIR/sources"
