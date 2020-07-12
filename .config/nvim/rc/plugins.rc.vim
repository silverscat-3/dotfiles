let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_dir)
		execute '!git clone https://github.com/Shougo/dein.vim ' . s:dein_repo_dir
	endif

	execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	call dein#add(s:dein_repo_dir)

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

