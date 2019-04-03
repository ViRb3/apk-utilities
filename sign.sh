#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-patched-aligned-debugSigned.apk"

if ! [ -f "$WORKDIR/app-patched.apk" ]; then
    echo "app-patched.apk not found! Run apktool-build first."
    exit 1
fi

rm "$DEST" 2&> /dev/null
$JAVA -jar $APKSIGNER -a "$WORKDIR/app-patched.apk"
echo "Saved to: $DEST"
