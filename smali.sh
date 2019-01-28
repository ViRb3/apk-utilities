#!/bin/bash
. ".config.sh"

rm "$WORKDIR/classes-patched.dex" 2&> /dev/null
$JAVA -jar $SMALI a -o "$WORKDIR/classes-patched.dex" "$WORKDIR/smali"
