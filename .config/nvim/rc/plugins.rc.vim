let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:dein_toml_dir = expand('~/.config/nvim/toml/')

if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_dir)
		execute '!git clone https://github.com/Shougo/dein.vim ' . s:dein_repo_dir
	endif

	execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	call dein#add(s:dein_repo_dir)
	
	call dein#load_toml(s:dein_toml_dir . 'plugins.toml', {'lazy': 0})
	call dein#load_toml(s:dein_toml_dir . 'plugins_lazy.toml', {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

