#!/bin/bash
. ".config.sh"

$ADB shell pm list packages -f -3
echo
read -p 'Package to pull: ' PKG
$ADB pull $PKG
mkdir -p "$WORKDIR"
mv "base.apk" "$WORKDIR/app.apk"
