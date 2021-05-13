#!/bin/bash
. ".config.sh"
check_empty "$@" "No APK files specified!"

$ADB install-multiple "$@"

echo "Installed: $@"
