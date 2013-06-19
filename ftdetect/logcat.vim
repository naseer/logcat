fun! s:DetectLogcat()
	" Detect from first line
	if getline(1) =~# '.*[F|E|W|I|D|V]/\S*\s*(.*'
		set filetype=logcat
	endif
endfun

au BufNewFile,BufRead *.lc set filetype=logcat
au BufNewFile,BufRead *.logcat set filetype=logcat
au BufNewFile,BufRead * call s:DetectLogcat()

