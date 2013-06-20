#Logcat plugin for Vim

##Description

This plugin turn up highlights for Android log files

The main highlights are based on the debug level.

Please see http://developer.android.com/guide/developing/tools/adb.html#logcat
for more information on Android logcat logs.

##Installation

If you use *pathogen* plugin, just clone this repo in your *bundle/* directory.

Otherwise, just copy the repo content in your *.vim/* configuration subdir.

Your terminal needs to support 256 colors. Wich is the case for most X
terminals anyway.

##Details on filetype autodetection

This plugins detects files with  *.lc* or *.logcat* extensions, and tries to
perform a basic detection on other files. This part is scripted in the
*ftdetect/* subdirectory.

Alternatively, if the detection fails, you can do :

*set ft=logcat*

to set the syntax.

##Limitations

* Support for GUI vim is yet incomplete.
* Support for color schemes is inexistant.
* The colors have been chosen for a light background.
