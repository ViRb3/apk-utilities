#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/app.apk"

search_package () {
    read -p 'Search for package: ' PKG
    RESULTS=$($ADB shell 'pm list packages' | sed 's/.*://' | sort | grep "$PKG")
    if [ -z "$RESULTS" ]; then
        RESULTS_COUNT=0
    else
        RESULTS_COUNT=$(echo "$RESULTS" | wc -l)
    fi
    echo "$RESULTS"
    echo ""
    echo "$RESULTS_COUNT results"
}

search_package
while [ "$RESULTS_COUNT" -ne 1 ]; do
    search_package
done

RESULTS=$(echo "$RESULTS" | tr -d '\r' | tr -d '\n')
BASE=$($ADB shell pm path "$RESULTS" | awk -F':' '{print $2}' | tr -d '\r' | tr -d '\n')

check_empty "$BASE" "Invalid package!"

mkdir -p "$WORKDIR"
$ADB pull "$BASE" "$DEST"

check_status
echo "Saved to: $DEST"
