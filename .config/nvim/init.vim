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

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" きょうせいギプス
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

