# APK Utilities
A cross-platform suite of scripts and utilities for working with APK files

## Features
### Pull
* __adb-pull__ - pull an app's APK files from a connected device to the `project` directory
* __adb-lp-pull__ - pull all LP modified files to the `project` directory
* __clean__ - clean the `project` directory 
### Extract
* __apktool-decode__ - decode an `apk` to `sources`
* __baksmali__ - decompile a `dex` to `smali`
* __aapt-dump__ - dump Android-specific data (resources, manifest) from an `apk`
* __enjarify__ - convert an `apk` to a `jar`
* __dexify__ - convert a `jar` to a `dex`
### Build
* __apktool-build__ - build previously decoded `sources` to a `patched apk` 
* __smali__ - build previously decompiled `smali` to a `patched dex`
* __sign__ - sign a `patched apk` to a `signed apk`
### Push
* __adb-install__ - install an `apk` file
* __adb-install-multiple__ - install multiple `apk` files
* __adb-lp-push__ - push `files` to the LP data directory

## Usage
Clone this repo and use the `.sh` scripts at its root. For a clean workflow, all scripts operate under the `project` directory.

## Example workflow
* adb-pull > apktool-decode > *make changes* > apktool-build > sign > adb-install

## Installation
You need [bash](https://www.gnu.org/software/bash/) installed and accessible under `/bin/bash`. On Windows you can use [WSL](https://docs.microsoft.com/en-us/windows/wsl/), the scripts will detect that and still use the native Windows binaries.

If you want to use the `aapt-*` and `adb-*` scripts, then you also need to install the [Android SDK](https://developer.android.com/studio/#downloads
). In Ubuntu, there is an official package `android-sdk`. Make sure the following directories are added to your `PATH`:
* `android-sdk/platform-tools/`
* `android-sdk/build-tools/xx.x.x/` (preferably the most up-to-date one)

## 3rd party
* [apktool](https://github.com/iBotPeaches/Apktool)
* [smali/baksmali](https://github.com/JesusFreke/smali)
* [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer)
* [enjarify](https://github.com/Storyyeller/enjarify)
