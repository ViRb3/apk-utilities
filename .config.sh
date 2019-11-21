#!/bin/bash
export BINDIR="bin"
export APKTOOL=$BINDIR/apktool_2.4.0.jar
export BAKSMALI=$BINDIR/baksmali-2.3.4.jar
export SMALI=$BINDIR/smali-2.3.4.jar
export APKSIGNER=$BINDIR/uber-apk-signer-1.1.0.jar
export ENJARIFY=$BINDIR/enjarify.sh

export WORKDIR="project"
export LPDIR="/sdcard/Android/data/___.lp/files/LuckyPatcher/"

# is running under WSL?
if [ $(uname -r | grep "Microsoft") ]
then
    export ADB="adb.exe"
    export AAPT="aapt.exe"
    export JAVA="java.exe"
    export ADB="adb.exe"
else
    export ADB="adb"
    export AAPT="aapt"
    export JAVA="java"
    export ADB="adb"
fi

check_status () {
    if [ $? -ne 0 ]; then
        echo "Error encountered"
        exit 2
    fi
}

check_file () {
    if ! [ -f "$1" ]; then
        echo "$2"
        exit 1
    fi
}

check_directory () {
    if ! [ -d "$1" ]; then
        echo "$2"
        exit 1
    fi
}

check_empty () {
    if [ -z "$1" ]; then
        echo "$2"
        exit 1
    fi
}