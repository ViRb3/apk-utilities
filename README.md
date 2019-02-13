# APK Utilities
A cross-platform collection of scripts and utilities for working with APK files

## Features
* __aapt-dump__ - dump Android-specific data (resources, manifest) from the `input apk`
* __adb-install__ - install the `patched+signed apk`
* __adb-pull__ - pull an apk to `input apk` from a connected device
* __apktool-build__ - build the `patched apk` from previously decoded `sources`
* __apktool-decode__ - decode the `input apk` to `sources`
* __baksmali__ - decompile the `input dex` to `smali`
* __clean__ - clean the `project` directory
* __enjarify__ - convert the `input apk` to a `jar`
* __adb-lp-push__ - push `$1` to the LP data directory
* __sign__ - sign the `patched apk` to a `signed+patched apk`
* __smali__ - compile the `smali` to a `patched dex`

## Usage
This package contains a bunch of useful shell scripts at its root. For a clean workflow, they all operate under the `project` directory. Inside there, you can place:
* `app.apk` - the input apk
* `classes.dex` - the input dex

## Example workflow
* adb-pull > apktool-decode > *make changes* > apktool-build > sign > adb-install

## Installation
* Linux - none!
* macOS - ?
* Windows - you must enable [WSL](https://docs.microsoft.com/en-us/windows/wsl/) and install a bash-compatible distro (e.g. Ubuntu)

If you want to use the `aapt-*` and `adb-*` scripts, then you also need to install the [Android SDK](https://developer.android.com/studio/#downloads
). In Ubuntu, there is an official package `android-sdk`. Make sure the following directories are added to your PATH:
* `android-sdk/platform-tools/`
* `android-sdk/build-tools/xx.x.x/` (preferrably the most up-to-date ones)

## 3rd party
* [apktool](https://github.com/iBotPeaches/Apktool)
* [smali/baksmali](https://github.com/JesusFreke/smali)
* [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer)
* [enjarify](https://github.com/Storyyeller/enjarify)
