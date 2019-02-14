#!/bin/bash
. ".config.sh"

if ! [ -f "$WORKDIR/classes.dex" ]; then
    echo "classes.dex not found! Place your input file there."
    exit
fi
rm -rf "$WORKDIR/smali" 2&> /dev/null
$JAVA -jar $BAKSMALI d --use-locals -o "$WORKDIR/smali" "$WORKDIR/classes.dex"
