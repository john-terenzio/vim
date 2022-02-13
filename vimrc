" JT's vimrc
"
" Plug
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'dag/vim-fish'
Plug 'embear/vim-localvimrc'
Plug 'junegunn/fzf'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Main behavior
filetype plugin indent on
set directory=$HOME/.vim/tmp/
set encoding=utf-8
set hidden
set laststatus=2
set list
set listchars=tab:▸\ ,
set number
set shell=/usr/bin/fish
set statusline=%f[%{&ff}]%y%r%m%=\ %c,%l/%L\ %P
set termencoding=utf-8
set viminfo+=n$HOME/.vim/viminfo
set wildignorecase
set wildmenu

" Jump to last position when reopening a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"zz" | endif

" Syntax highlighting
syntax enable
set colorcolumn=80
autocmd BufReadPost * match BadWhitespace /\s\+$/
autocmd InsertEnter * match BadWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match BadWhitespace /\s\+$/

" Solarized colors w/ some tweaks
colorscheme solarized
set background=dark
set fillchars+=vert:\ ,
highlight BadWhitespace ctermbg=1
highlight Error cterm=none
highlight ErrorMsg cterm=none
highlight IncSearch ctermbg=0
highlight MatchParen ctermfg=none ctermbg=none cterm=underline
highlight NonText ctermfg=8
highlight Search ctermbg=0
highlight SpecialKey ctermfg=0 ctermbg=none
highlight StatusLine cterm=none
highlight StatusLineNC cterm=none
highlight VertSplit ctermfg=8 ctermbg=8
highlight Visual ctermbg=14 ctermfg=0
highlight WarningMsg ctermfg=3 cterm=none

" Indentation
set autoindent
set backspace=indent,eol,start
set copyindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Splits
set splitbelow
set splitright
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Native shortcuts/mappings
nmap <leader>n :nohl<CR>
nmap <leader>s :shell<CR>
nmap j gj
nmap k gk

" X11 copy & paste
if executable("xsel")
  nmap <leader>p :call setreg("\"", system("xsel -b -o"))<CR>p
  nmap <leader>P :call setreg("\"", system("xsel -b -o"))<CR>P
  vmap <leader>y y:call system("xsel -b -i", getreg("\""))<CR>
endif

" File type overrides
autocmd FileType go,ruby set colorcolumn=100
autocmd FileType go set noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType java set colorcolumn=91 " Spring
autocmd FileType text set colorcolumn= linebreak wrap " Soft wrap text files

" fzf settings
map <c-p> :FZF<CR>

" Local .vimrc settings
let g:localvimrc_persistence_file = expand('$HOME') . "/.vim/tmp/localvimrc_persistent"
let g:localvimrc_persistent = 2
let g:localvimrc_sandbox = 0
