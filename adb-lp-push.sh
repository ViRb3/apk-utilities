#!/bin/bash
. ".config.sh"

$ADB push "$1" "$LPDIR"
