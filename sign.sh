#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app-patched-aligned-debugSigned.apk"

check_file "$WORKDIR/app-patched.apk" "app-patched.apk not found! Run apktool-build first."

rm "$DEST" 2&> /dev/null
$JAVA -jar $APKSIGNER -a "$WORKDIR/app-patched.apk"

check_status
echo "Saved to: $DEST"
