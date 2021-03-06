" Init {{{
execute pathogen#infect()
syntax on                   " enable syntax highlighting
filetype plugin indent on   " indentation is filetype specific
let mapleader=","           " set comma as leader
" }}}
" General Settings {{{
set modeline                " enables file specific options
set modelines=2             " search n lines for file specific options

set tabstop=4               " tabstop is n spaces
set softtabstop=4           " tabstop will be displayed as n spaces
set shiftwidth=4            " autoindent will be n spaces
set expandtab               " tabstop will be expanded to spaces
" }}}
" User Interface {{{
set number                  " display line numbers
set showcmd                 " show typed commands
set wildmenu                " show autocomplete suggenstions
set showmatch               " highlight matching brackets
" }}}
" Vim Search {{{
set incsearch               " search while typing
set hlsearch                " highlight searches
set ignorecase              " no case sensitve search
set smartcase               " case sensitve for capital letters

" stop highlighting with leader+space
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable              " enalbe folding
set foldmethod=indent       " folding based on identation
set foldlevelstart=10       " autofold when loading at level n
set foldnestmax=10          " maximum allowed nested folds

" toogle fold with space
nnoremap <space> za
" }}}
" Keymaps {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
nnoremap <leader>s :mksession<cr>

inoremap jk <esc>
" }}}
" Cursor Style {{{
let &t_SI = "\e[6 q"        " slim cursor in insert mode
let &t_SR = "\e[4 q"        " underscore cursor in replace mode
let &t_EI = "\e[2 q"        " wide cursor in normal mode

" set cursor on exit and start
autocmd VimLeave * silent !echo -ne "\e[6 q"
autocmd VimEnter * silent !echo -ne "\e[2 q"
" }}}
" Plugin: ack.vim {{{
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
nnoremap <leader>a :Ack<space>
" }}}
" Plugin: gundo.vim {{{
nnoremap <leader>u :GundoToggle<cr>
" }}}
" vim:foldmethod=marker:foldlevel=0
