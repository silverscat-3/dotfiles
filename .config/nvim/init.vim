augroup MyAutoCmd
autocmd!
augroup END

if has('nvim')
	if &compatible
		set nocompatible
	endif

	let g:vim_home = expand('~/.config/nvim')
	let g:rc_dir = expand('~/.config/nvim/rc')
else
	let g:vim_home = expand('~/.config/vim')
	let g:rc_dir = expand('~/.config/vim')
endif

function! s:source_rc(filename)
	let filepath = expand(g:rc_dir . '/' . a:filename)
	if filereadable(filepath)
		execute 'source' filepath
	endif
endfunction

call s:source_rc('plugins.rc.vim')
call s:source_rc('clipboard.rc.vim')

set encoding=utf-8

set number
set wildmenu

set ruler
set cursorline

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

