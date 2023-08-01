#!/bin/bash
. ".config.sh"

# ensure path never expands to /*
rm -r "${WORKDIR:?}/"*

echo "Cleaned $WORKDIR"
