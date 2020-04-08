#!/bin/bash
. ".config.sh"

check_empty "$@" "No APK files specified!"

$ADB install-multiple "$@"

check_status
echo "Installed: $@"
