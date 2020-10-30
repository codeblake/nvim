
" ███╗   ███╗ █████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
" ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
" ██╔████╔██║███████║██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗███████╗
" ██║╚██╔╝██║██╔══██║██╔═══╝ ██╔═══╝ ██║██║╚██╗██║██║   ██║╚════██║
" ██║ ╚═╝ ██║██║  ██║██║     ██║     ██║██║ ╚████║╚██████╔╝███████║
" ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

" Motions
" Set to move through line wrap (source: https://stackoverflow.com/a/21000307).
" noremap <expr> j v:count ? "<UP>" : "g<UP>"
" noremap <expr> k v:count ? "<DOWN>" : "g<DOWN>"

noremap j <UP>
noremap k <DOWN>
noremap l <LEFT>
noremap ; <RIGHT>

"Yank from cursor to end of line
map Y y$

" Exit terminal
tnoremap <Esc> <C-\><C-n>

" Disable highlight
noremap <silent> <ESC> :nohlsearch<CR>

