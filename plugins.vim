
" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝

" Auto Install Vim-Plug
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
let url = " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
if !filereadable(autoload_plug_path)
	silent execute '!curl -fL --create-dirs -o ' autoload_plug_path . url
	execute 'source ' . fnameescape(autoload_plug_path)
	let plug_install = 1
endif
unlet autoload_plug_path

" Plugins
call plug#begin('~/.config/nvim/plugins')
	Plug 'itchyny/lightline.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'machakann/vim-highlightedyank'
	Plug 'mhinz/vim-signify'
	Plug 'mhinz/vim-startify'
	Plug 'morhetz/gruvbox'
	Plug 'ryanoasis/vim-devicons'
	Plug 'sheerun/vim-polyglot'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'aymericbeaumet/vim-symlink'
call plug#end()

if plug_install
	PlugInstall --sync
endif
unlet plug_install

