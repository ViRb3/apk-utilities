#!/bin/bash
set -e

export BINDIR="bin"
export APKTOOL=$BINDIR/apktool_2.5.0.jar
export BAKSMALI=$BINDIR/baksmali-2.5.2.jar
export SMALI=$BINDIR/smali-2.5.2.jar
export APKSIGNER=$BINDIR/uber-apk-signer-1.2.1.jar
export ENJARIFY=$BINDIR/enjarify.sh

export WORKDIR="project"
export LPDIR="/sdcard/Android/data/___.lp/files/LuckyPatcher/"

# is running under WSL?
if [ $(uname -r | grep -i "microsoft") ]; then
    export ADB="adb.exe"
    export AAPT="aapt.exe"
    export JAVA="java.exe"
    export ADB="adb.exe"
    export DX="cmd.exe /c dx.bat"
else
    export ADB="adb"
    export AAPT="aapt"
    export JAVA="java"
    export ADB="adb"
    export DX="dx"
fi

# check if argument is empty
check_empty() {
    if [ -z "$1" ]; then
        echo "$2"
        exit 1
    fi
}

# asks the user to select input file
# $1 - search directory
# $2 - input file glob
select_file() {
    SELECT_DIR="\"$1\"/$2"
    RESULTS=$(eval ls -d $SELECT_DIR 2>/dev/null)
    if [ -z "$RESULTS" ]; then
        echo "Error: No matches for '$SELECT_DIR'" >&2
        exit 1
    fi
    # set the prompt used by select, replacing "#?"
    PS3="Select input number: "
    select filename in $RESULTS; do
        if [[ "$filename" == "" ]]; then
            echo "'$REPLY' is not a valid choice" >/dev/tty
            continue
        fi

        echo "$filename"
        return
    done
}
