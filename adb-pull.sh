#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app.apk"

$ADB shell 'pm list packages' | sed 's/.*://' | sort
echo
read -p 'Package to pull: ' PKG
BASE=$($ADB shell pm path ${PKG} | awk -F':' '{print $2}' | tr -d '\r' | tr -d '\n')

check_empty "$BASE" "Invalid package!"

mkdir -p "$WORKDIR"
$ADB pull "$BASE" "$DEST"

check_status
echo "Saved to: $DEST"
