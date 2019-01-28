#!/bin/bash
. ".config.sh"

$ADB install "$WORKDIR/app-patched-aligned-debugSigned.apk"
