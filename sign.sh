#!/bin/bash
. ".config.sh"

rm "$WORKDIR/app-patched-aligned-debugSigned.apk" 2&> /dev/null
$JAVA -jar $APKSIGNER -a "$WORKDIR/app-patched.apk" # outputs "app-patched-aligned-debugSigned.apk"
