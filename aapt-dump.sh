#!/bin/bash
. ".config.sh"

$AAPT l -a "$WORKDIR/app.apk" > "$WORKDIR/dump.txt"
