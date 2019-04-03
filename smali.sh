#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/classes-patched.dex"

if ! [ -d "$WORKDIR/smali" ]; then
    echo "smali directory not found! Run baksmali first."
    exit 1
fi

rm "$DEST" 2&> /dev/null
$JAVA -jar $SMALI a -o "$DEST" "$WORKDIR/smali"
echo "Saved to: $DEST"
