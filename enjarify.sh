#!/bin/bash
. ".config.sh"

rm "$WORKDIR/app.jar" 2&> /dev/null
$ENJARIFY "$WORKDIR/app.apk"
