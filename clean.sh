#!/bin/bash
. ".config.sh"

cd "$WORKDIR"
rm -rf *
cd - >/dev/null
echo "Cleaned $WORKDIR"
