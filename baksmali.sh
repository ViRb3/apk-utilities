#!/bin/bash
. ".config.sh"

rm -rf "$WORKDIR/smali" 2&> /dev/null
$JAVA -jar $BAKSMALI d --use-locals -o "$WORKDIR/smali" "$WORKDIR/classes.dex"
