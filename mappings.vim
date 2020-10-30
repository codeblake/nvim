
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

" Yank from cursor to end of line
map Y y$

" Move line Up
nnoremap <silent> mj :m-2<CR>
vnoremap <silent> mj :m '<-2<CR>gv=gv

" Move line Down
nnoremap <silent> mk :m+<CR>
vnoremap <silent> mk :m '>+1<CR>gv=gv

" Move left character
nnoremap ml Xp<Left>

" Move right character
nnoremap m; xp

" Move right word
nn <silent> mw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohl<CR>

" Move left word
nn <silent> mb "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohl<CR>

" Quicker Shifting
nmap <TAB> >>
nmap <S-TAB> <<

" Exit terminal
tnoremap <Esc> <C-\><C-n>

" Disable highlight
noremap <silent> <ESC> :nohlsearch<CR>

" Leader
let mapleader = "\<Space>"

" Select windows
nnoremap <silent> <leader>j :winc k<CR>
nnoremap <silent> <leader>k :winc j<CR>
nnoremap <silent> <leader>l :winc h<CR>
nnoremap <silent> <leader>; :winc l<CR>

" Move windows
nnoremap <silent> <leader>jj :winc K<CR>
nnoremap <silent> <leader>kk :winc J<CR>
nnoremap <silent> <leader>ll :winc H<CR>
nnoremap <silent> <leader>;; :winc L<CR>

" Resize windows
nnoremap <silent> <leader>= :winc +<CR>
nnoremap <silent> <leader>- :winc -<CR>
nnoremap <silent> <leader>, :winc ><CR>
nnoremap <silent> <leader>. :winc <<CR>

" Split Window
nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>

" Select previous buffer
nnoremap <silent> <leader>[ :bp<CR>
" Select next buffer
nnoremap <silent> <leader>] :bn<CR>

" Delete buffer
nnoremap <silent> <leader>bd :bd<CR>

" Quit
nmap <silent> <leader>Q :q<CR>
nmap <silent> <leader>qa :qa<CR>

" Command
nnoremap <leader><RETURN> :
