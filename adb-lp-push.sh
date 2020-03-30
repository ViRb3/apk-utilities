#!/bin/bash
. ".config.sh"

check_empty "$1" "No input file!"

$ADB push "$1" "$LPDIR"

check_status
echo "Pushed to: $LPDIR"
