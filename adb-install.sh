#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")

$ADB install "$SRC" "$@"

echo "Installed: $SRC"
