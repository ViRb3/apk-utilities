#!/bin/bash
. ".config.sh"
DEST="$WORKDIR/"

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

mkdir -p "$WORKDIR"
RESULT=$(echo "$RESULTS" | tr -d '\r' | tr -d '\n')
APKS=$($ADB shell pm path "$RESULT")

for APK in $APKS; do
	APK=$(echo "$APK" | awk -F ':' '{print $2}' | tr -d '\r' | tr -d '\n')
	check_empty "$APK" "Invalid package!"
	$ADB pull "$APK" "$DEST"
	check_status
done

echo "Saved to: $DEST"
