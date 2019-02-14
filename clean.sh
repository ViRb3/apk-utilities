#!/bin/bash
. ".config.sh"

cd "$WORKDIR" || exit 1
rm -rf *
cd - > /dev/null
