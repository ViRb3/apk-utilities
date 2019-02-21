#!/bin/bash
. ".config.sh"

if ! [ -f "$WORKDIR/app-patched.apk" ]; then
    echo "app-patched.apk not found! Run apktool-build first."
    exit 1
fi
rm "$WORKDIR/app-patched-aligned-debugSigned.apk" 2&> /dev/null
$JAVA -jar $APKSIGNER -a "$WORKDIR/app-patched.apk" # outputs "app-patched-aligned-debugSigned.apk"
