#!/bin/bash
. ".config.sh"
SRC="$WORKDIR/app-patched.apk"
DEST="$WORKDIR/app-patched-aligned-debugSigned.apk"

check_file "$SRC" "$SRC not found! Run apktool-build first."

rm "$DEST" 2&> /dev/null
$JAVA -jar $APKSIGNER -a "$SRC"

check_status
echo "Saved to: $DEST"
