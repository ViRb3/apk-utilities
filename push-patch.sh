#!/bin/bash
. ".config.sh"

$ADB push "$1" "/sdcard/Android/data/com.android.vending.billing.InAppBillingService.COIN/files/LuckyPatcher/"
