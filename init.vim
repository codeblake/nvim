
" ██╗███╗   ██╗██╗████████╗██╗ █████╗ ██╗     ███████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
" ██║████╗  ██║██║╚══██╔══╝██║██╔══██╗██║     ██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
" ██║██╔██╗ ██║██║   ██║   ██║███████║██║     ███████╗███████║   ██║   ██║██║   ██║██╔██╗ ██║
" ██║██║╚██╗██║██║   ██║   ██║██╔══██║██║     ╚════██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
" ██║██║ ╚████║██║   ██║   ██║██║  ██║███████╗███████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

" Plugins
exe "so" . stdpath("config") . "/plugins.vim"

" Mappings
exe "so" . stdpath("config") . "/mappings.vim"

" Settings
exe "so" . stdpath("config") . "/settings.vim"

" Plugin Settings
exe "so" . stdpath("config") . "/plugin-settings.vim"
