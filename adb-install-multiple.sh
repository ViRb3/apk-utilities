#!/bin/bash
. ".config.sh"

$ADB install-multiple "$@"

echo "Installed: $@"
