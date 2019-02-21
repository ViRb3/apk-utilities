#!/bin/bash
. ".config.sh"

$ADB shell 'pm list packages' | sed 's/.*://' | sort
echo
read -p 'Package to pull: ' PKG
BASE=$($ADB shell pm path ${PKG} | awk -F':' '{print $2}' | tr -d '\r' | tr -d '\n')

if [ -z "$BASE" ]; then
    echo "Invalid package!"
    exit 1
fi

mkdir -p "$WORKDIR"
$ADB pull "$BASE" "$WORKDIR/app.apk"
