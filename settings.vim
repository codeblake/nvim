
" ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
" ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
" ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
" ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
" ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
" ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

if has_key(plugs,"gruvbox") | colorscheme gruvbox | endif        " Theme
set nonumber norelativenumber                                    " Line numbers
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab             " Tab size
set listchars=eol:↴,tab:➔\ ,trail:~,extends:»,precedes:«,space:· " White-space characters
set clipboard^=unnamed,unnamedplus                               " Use system clipboard
set spell spelllang=en_gb                                        " Spell check language
set noshowmode                                                   " Hide mode text
set autochdir                                                    " Automatically change directory when opening file
set hidden                                                       " Switch buffers without saving
set nowrap                                                       " Word wrap
set nolist                                                       " Show whitespace characters

" Highlight trailing whitespace
highlight TrailingWhiteSpace ctermbg=NONE ctermfg=red
match TrailingWhiteSpace /\s\+$/

" Hide ~
highlight EndOfBuffer ctermbg=NONE ctermfg=black

" No background for opacity
highlight Normal ctermbg=NONE

" Smaller tabs for html files
autocmd filetype html,htmldjango setlocal ts=2 sts=2 sw=2 noet

" Make help window appear vertically
autocmd filetype help :wincmd L

" Quit help with q
autocmd filetype help nnoremap <buffer> q :q<CR>

