#!/bin/bash
. ".config.sh"

if [ "$#" -lt 2 ]; then
    echo "At least two APKs expected"
    exit 1
fi

mkdir -p "$WORKDIR/merge-tmp/"
cp "$@" "$WORKDIR/merge-tmp/"
"$JAVA" -jar "$APKEDITOR" m -i "$WORKDIR/merge-tmp" -o "$WORKDIR/project_merged.apk"
rm -r "$WORKDIR/merge-tmp/"

echo "Merged: $@"
