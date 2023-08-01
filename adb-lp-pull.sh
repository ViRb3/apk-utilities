#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/Modified"

"$ADB" pull --sync "$LPDIR/Modified" "$DEST"

echo "Saved to: $DEST"
