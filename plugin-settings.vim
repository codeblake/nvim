
" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗    ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║    ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║    ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║    ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║    ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝    ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

" LIGHTLINE styling
let g:lightline = {
	\	"colorscheme": "gruvbox",
	\	"tabline": {
	\		"left": [["tabs"]],
	\		"right": []
	\	},
	\	"active": {
	\		"left": [
	\			[ "mode", "paste" ],
	\		],
	\		"right":[
	\			["filetype"],
	\			["lineinfo"],
	\			["wordcount"],
	\		],
	\	},
	\	"component_function":{
	\		"filetype": "LLFileType",
	\	},
	\	"tabline_separator": { "left": '⮀', "right": '⮂' },
	\	"tabline_subseparator": { "left": "⮁", "right": "⮃" },
	\	'separator': { "left": "▓▒░", "right": "░▒▓" },
	\	'subseparator': {"left": "▎", "right": "▎" },
	\}

function! LLFileType()
	return winwidth(0) > 70 ? (strlen(&ft) ? &ft.' '.WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

" HIGHLIGHTEDYANK options
let g:highlightedyank_highlight_duration = 500

" SIGNIIFY default updatetime 4000ms is not good for async update (for signify)
set updatetime=100

" STARTIFY
"Show cursor line in Startify
autocmd User Startified setlocal cursorline

" Custom header
let g:startify_custom_header = map(split(system('nvim --version | head -n 1'), '\n'), '"   ". v:val')

" EASY ALIGN
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
