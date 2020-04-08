#!/bin/bash
. ".config.sh"
SRC=$(select_file "$WORKDIR" "*.apk")

$ADB install "$SRC"

check_status
echo "Installed: $SRC"
