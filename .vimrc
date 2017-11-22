"
"	Harvey Brown's vimrc
"



" vim-plug config :PlugUpdate :PlugClean! "
call plug#begin('~/vim/plugged')
	Plug 'octol/vim-cpp-enhanced-highlight'
	"Plug 'scrooloose/syntastic'
	"Plugin 'valloric/youcompleteme'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-scripts/vim-gitgutter'
	Plug 'https://github.com/kmyk/sdl2.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'altercation/vim-colors-solarized'
call plug#end()

" generic vim settings "
set tabstop=4
set relativenumber
set gdefault

" make vim look nice
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" switch between .h and .cpp files seamlessly "
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
