#!/bin/bash
. ".config.sh"

if ! [ -d "$WORKDIR/smali" ]; then
    echo "smali directory not found! Run baksmali first."
    exit
fi
rm "$WORKDIR/classes-patched.dex" 2&> /dev/null
$JAVA -jar $SMALI a -o "$WORKDIR/classes-patched.dex" "$WORKDIR/smali"
