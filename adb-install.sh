#!/bin/bash
. ".config.sh"

if ! [ -f "$WORKDIR/app-patched-aligned-debugSigned.apk" ]; then
    echo "app-patched-aligned-debugSigned.apk not found! Run sign first."
    exit 1
fi
$ADB install "$WORKDIR/app-patched-aligned-debugSigned.apk"
