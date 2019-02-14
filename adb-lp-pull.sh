#!/bin/bash
. ".config.sh"

$ADB pull --sync "/sdcard/Android/data/___.lp/files/LuckyPatcher/Modified" "$WORKDIR/Modified"
