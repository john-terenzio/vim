" JT's .vimrc

" Main behavior
filetype plugin indent on
set directory=~/.vim/tmp
set encoding=utf-8
set hidden
set laststatus=2
set list
set listchars=tab:▸\ ,
set number
set statusline=%f[%{&ff}]%y%r%m%=\ %c,%l/%L\ %P
set termencoding=utf-8
set title
set viminfo+=n~/.vim/viminfo
set wildmenu

" Jump to last position when reopening a file
au BufReadPost * exe "normal! `\""

" Syntax highlighting tweaks
syntax enable
autocmd BufReadPost * match BadWhitespace /\s\+$/
autocmd InsertEnter * match BadWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match BadWhitespace /\s\+$/
autocmd FileType javascript syntax keyword javaScriptGlobal navigator exports
autocmd FileType javascript syntax keyword javaScriptNothing event static status
autocmd FileType javascript syntax keyword javaScriptReserved void
autocmd FileType javascript syntax keyword javaScriptSpecial console
autocmd FileType javascript highlight link javaScriptMessage PreProc
autocmd FileType javascript highlight link javaScriptNull Function
autocmd FileType javascript highlight link javaScriptNumber Number
autocmd FileType python syntax keyword pythonBoolean True False
autocmd FileType python highlight link pythonBoolean Number
autocmd FileType c,javascript,ruby,php,python setlocal colorcolumn=80

" Solarized colors w/ some tweaks
colorscheme solarized
set background=dark
set fcs+=vert:\ ,
highlight BadWhitespace ctermbg=1
highlight Error cterm=none
highlight ErrorMsg cterm=none
highlight IncSearch ctermbg=0
highlight MatchParen ctermfg=none ctermbg=none cterm=underline
highlight NonText ctermfg=8
highlight Search ctermbg=0
highlight SpecialKey ctermfg=8 ctermbg=none
highlight StatusLine cterm=none
highlight StatusLineNC cterm=none
highlight VertSplit ctermfg=8 ctermbg=8
highlight Visual ctermbg=0
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

" Native shortcuts/mappings
map <leader>2 :setlocal shiftwidth=2<CR>:setlocal tabstop=2<CR>:setlocal softtabstop=2<CR>
map <leader>4 :setlocal shiftwidth=4<CR>:setlocal tabstop=4<CR>:setlocal softtabstop=4<CR>
map <leader>n :nohl<CR>
map <leader>p :set paste!<CR>
map <leader>s :shell<CR>
map <leader>t :tabnew<CR>
imap <c-p> <nop>
nmap j gj
nmap k gk

" Ctrl-P settings
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/ctrlp'
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = 0
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*.gif,*.jpg,*.jpeg,*.png,.DS_Store

" NERDTree settings
map <leader>d :NERDTree<CR>
let g:NERDTreeDirArrows=0

" Local .vimrc settings
let g:localvimrc_ask = 0
