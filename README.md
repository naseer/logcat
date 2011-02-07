#logcat.vim

##Description
Highlights Android logcat files with extension *.logcat based on the log level
Please see http://developer.android.com/guide/developing/tools/adb.html#logcat for more information on Android logcat logs.

##Installation details:
The adb logcat file needs to have a .logcat extension.

Please place the logcat.vim file in your ~/.vim/syntax directory and add the following line to your ~/.vimrc (or _vimrc on Windows)

    au BufRead,BufNewFile *.logcat set filetype=logcat

Alternatively, if the extension is not .logcat, you can do :set ft=logcat to set the syntax

