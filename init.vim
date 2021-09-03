
" config options
syntax on
set encoding=UTF-8
set tabstop=4 "how many space for tab
set shiftwidth=4 "how many space for every level of indentation
set autoindent "Preserver indentation
set smartindent "smart indentation for language
set number
set relativenumber
set hlsearch "highlight all search pattern
set incsearch "enable incremental search
set ignorecase "case insensitive search by default
set smartcase 

call plug#begin("~/AppData/Local/nvim/plugged")
  " Plugin Section
  	Plug 'morhetz/gruvbox'
  	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'hoob3rt/lualine.nvim'
call plug#end()

"Config Section
colorscheme gruvbox
set background=dark

" config for file manager
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

"config for auto closing parenthesis and quotes
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
