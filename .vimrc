" Not compatible with Vi
set nocompatible

" Run pathogen
execute pathogen#infect()

" Okay then
set shortmess=a
set cmdheight=2

" Syntax highlighting
filetype plugin on
filetype indent on
syntax on

" Highlight trailing WS
set list
set listchars=trail:.,tab:>>

" Don't highlight trailing WS on current line (Doesn't work for some reason)
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

" Buffer tweaks
set autoread
set nostartofline

" Status line info
set ruler
set showmode
set showcmd

" Display tweaks
set display+=uhex
set scrolloff=3

" Line numbers
set number
set relativenumber

" Searching
set ignorecase
set nohlsearch

" Indentation
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set wrap

" If :q without :w, just write all
set autowriteall

" No swapfiles
set noswapfile

" Tabs instead of spaces for rover code
autocmd BufRead,BufNewFile */Rover2017/* set noexpandtab
autocmd BufRead,BufNewFile */Rover2017/* set nolist

" Misc. mappings
autocmd FileType python inoremap """ """"""<Left><Left><Left>
autocmd FileType c,cpp,java,php,rust,lilypond inoremap { {<Enter>}<Esc>kA
autocmd BufRead,BufNewFile *.blade.php iunmap {
nnoremap _o o<Esc>O
nnoremap _O O<Esc>o
nnoremap <Space> i <Esc>r
nnoremap Y y$
nnoremap <Left> :bp <Enter>
nnoremap <Right> :bn <Enter>
nnoremap <Up> gk
nnoremap <Down> gj
nnoremap <Del> :bdel <Enter>
