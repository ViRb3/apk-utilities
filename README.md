# APK Utilities
A cross-platform suite of scripts and utilities for working with APK files

## Features
### Pull
* __adb-pull__ - pull an apk from a connected device to `input apk`
* __adb-lp-pull__ - pull all LP modified files to the project directory
* __clean__ - clean the `project` directory 
### Extract
* __apktool-decode__ - decode the `input apk` to `sources`
* __baksmali__ - decompile the `input dex` to `smali`
* __aapt-dump__ - dump Android-specific data (resources, manifest) from the `input apk`
* __enjarify__ - convert the `input apk` to a `jar`
### Build
* __apktool-build__ - build the `patched apk` from previously decoded `sources`
* __smali__ - compile the `smali` to a `patched dex`
* __sign__ - sign the `patched apk` to a `signed+patched apk`
### Push
* __adb-install__ - install the `patched+signed apk`
* __adb-lp-push__ - push `$1` to the LP data directory

## Usage
Clone this repo and use the `.sh` scripts at its root. For a clean workflow, all scripts operate under the `project` directory. Inside there, you can place:
* `app.apk` - the input apk
* `classes.dex` - the input dex

## Example workflow
* adb-pull > apktool-decode > *make changes* > apktool-build > sign > adb-install

## Installation
You need [bash](https://www.gnu.org/software/bash/) installed and accessible under `/bin/bash`. On Windows you can use [WSL](https://docs.microsoft.com/en-us/windows/wsl/), the scripts will detect that and still use the native Windows binaries

If you want to use the `aapt-*` and `adb-*` scripts, then you also need to install the [Android SDK](https://developer.android.com/studio/#downloads
). In Ubuntu, there is an official package `android-sdk`. Make sure the following directories are added to your `PATH`:
* `android-sdk/platform-tools/`
* `android-sdk/build-tools/xx.x.x/` (preferably the most up-to-date one)

## 3rd party
* [apktool](https://github.com/iBotPeaches/Apktool)
* [smali/baksmali](https://github.com/JesusFreke/smali)
* [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer)
* [enjarify](https://github.com/Storyyeller/enjarify)
