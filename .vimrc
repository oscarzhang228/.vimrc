" line numbers
set number

" Turn on syntax highlighting
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

" List your plugins here
Plug 'github/copilot.vim'
Plug 'tell-k/vim-autopep8'
Plug 'sbdchd/neoformat'

call plug#end()

" Auto formatter: python: Autopep8 and prettier: Neoformat
" Disable show diff window
let g:autopep8_disable_show_diff=1

" Enable autopep8 on save
utopep8_on_save = 1

" Enable autopep8 on text changed and leaving insert mode  
autocmd BufWritePre,TextChanged,InsertLeave *.js Autopep8

" Enable neoformat on text changed and leaving insert mode 
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
