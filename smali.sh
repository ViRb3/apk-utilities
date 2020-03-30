#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/classes-patched.dex"

check_directory "$WORKDIR/smali" "smali directory not found! Run baksmali first."

rm "$DEST" 2&> /dev/null
$JAVA -jar $SMALI a -o "$DEST" "$WORKDIR/smali"

check_status
echo "Saved to: $DEST"
