#!/bin/bash
. ".config.sh"
check_empty "$1" "No input file specified!"

$ADB push "$1" "$LPDIR"

echo "Pushed to: $LPDIR"
