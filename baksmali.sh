#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/smali"

if ! [ -f "$WORKDIR/classes.dex" ]; then
    echo "classes.dex not found! Place your input file there."
    exit 1
fi

rm -rf "$DEST" 2&> /dev/null
$JAVA -jar $BAKSMALI d --use-locals -o "$DEST" "$WORKDIR/classes.dex"
echo "Saved to: $DEST"
