
" ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
" ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
" ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
" ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
" ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
" ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

if has_key(plugs,"gruvbox") | colorscheme gruvbox | endif             " Set theme
set number relativenumber                                             " Set line numbers
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab                  " Set tab size
set list listchars=eol:↴,tab:➔\ ,trail:~,extends:»,precedes:«,space:· " White space characters
set clipboard^=unnamed,unnamedplus                                    " Use system clipboard
set spell spelllang=en_gb                                             " Set spell check language
set noshowmode                                                        " hide mode text
set autochdir                                                         " Automatically change directory when opening file

" Highlight trailing whitespace
highlight TrailingWhiteSpace ctermbg=NONE ctermfg=red
match TrailingWhiteSpace /\s\+$/

" Hide ~
highlight EndOfBuffer ctermbg=NONE ctermfg=black

" No background for opacity
highlight Normal ctermbg=NONE

"Smaller tabs for html files
autocmd filetype html,htmldjango setlocal ts=2 sts=2 sw=2 noet

"Make help window appear vertically
autocmd filetype help :wincmd L

"Quit help with q
autocmd filetype help nnoremap <buffer> q :q<CR>
