" Vim syntax file
" Language:		logcat
" Maintainers:		Naseer Ahmed <naseer.ahmed@gmail.com>
"			Lertsenem <lertsenem@yahoo.fr>
" Latest Revision:	2013-06-19

if exists("b:current_syntax")
    finish
endif

" Particular settings
set nonumber
colorscheme default

" Define colors
hi def log_date_color ctermfg=darkgrey ctermbg=lightgrey
hi def log_hour_color ctermfg=197
hi def log_millisec_color ctermfg=205
hi def log_num_color ctermfg=grey

hi def log_processNumber_color ctermfg=178
hi def log_processName_color cterm=bold

hi def dbg_color ctermbg=red

" Violet
hi def kw_fatal_color ctermfg=177
hi def kw_error_color ctermfg=red
hi def kw_warning_color ctermfg=130
hi def kw_info_color ctermfg=darkgreen
hi def kw_debug_color ctermfg=25
hi def kw_verbose_color ctermfg=grey

" Define regions
syn region reg_date start="^" end="\]" fold transparent contains=log_date,log_hour,log_millisec,log_num keepend
syn region reg_infos start="[F|E|W|I|D|V]/" end=":" fold transparent contains=log_processName,log_processNumber keepend

" Define keywords
syn keyword log_fatal contained F
syn keyword log_error contained E
syn keyword log_warning contained W
syn keyword log_info contained I
syn keyword log_debug contained D
syn keyword log_verbose contained V

" Define matches
syn match log_date contained '^\d\d-\d\d' nextgroup=log_hour skipwhite
syn match log_hour contained '\d\d:\d\d:\d\d' nextgroup=log_millisec skipwhite
syn match log_millisec contained '\.\d\d\d' nextgroup=log_num skipwhite
syn match log_num contained '\[\d:\d\{9}\]'

syn match log_processName contained '[F|E|W|I|D|V]/[a-zA-Z0-9-_\.]*' nextgroup=log_processNumber skipwhite contains=log_fatal,log_error,log_warning,log_info,log_debug,log_verbose
syn match log_processNumber contained '(.\{-})'


syn match reg_fatal 'F/.*$' contains=reg_infos
syn match reg_error 'E/.*$' contains=reg_infos
syn match reg_warning 'W/.*$' contains=reg_infos
syn match reg_info 'I/.*$' contains=reg_infos
syn match reg_debug 'D/.*$' contains=reg_infos
syn match reg_verbose 'V/.*$' contains=reg_infos

" Define links
hi def link log_date log_date_color
hi def link log_hour log_hour_color
hi def link log_millisec log_millisec_color
hi def link log_num log_num_color

hi def link log_processNumber log_processNumber_color
hi def link log_processName log_processName_color

hi def link log_fatal kw_fatal_color
hi def link log_error kw_error_color
hi def link log_warning kw_warning_color
hi def link log_info kw_info_color
hi def link log_debug kw_debug_color
hi def link log_verbose kw_verbose_color

hi def link reg_fatal kw_fatal_color
hi def link reg_error kw_error_color
hi def link reg_warning kw_warning_color
hi def link reg_info kw_info_color
hi def link reg_debug kw_debug_color
hi def link reg_verbose kw_verbose_color
