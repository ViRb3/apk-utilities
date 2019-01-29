#!/bin/bash
export BINDIR="./bin"
export APKTOOL=$BINDIR/apktool_2.3.4.jar
export BAKSMALI=$BINDIR/baksmali-2.2.6.jar
export SMALI=$BINDIR/smali-2.2.6.jar
export APKSIGNER=$BINDIR/uber-apk-signer-1.0.0.jar
export ENJARIFY=$BINDIR/enjarify.sh

export WORKDIR="./project"

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
