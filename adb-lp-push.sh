#!/bin/bash
. ".config.sh"

if [ -z "$1" ]; then
    echo "No input file!"
    exit 1
fi

$ADB push "$1" "$LPDIR"

check_status
echo "Pushed to: $LPDIR"
