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
autocmd BufReadPost * execute "normal! `\""

" Syntax highlighting
syntax enable
autocmd FileType c,javascript,ruby,php,python setlocal colorcolumn=80
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
highlight SpecialKey ctermfg=8 ctermbg=none
highlight StatusLine cterm=none
highlight StatusLineNC cterm=none
highlight VertSplit ctermfg=8 ctermbg=8
highlight Visual ctermbg=0
highlight WarningMsg ctermfg=3 cterm=none

" Syntax highlighting tweaks
let syntax_tweaks = expand('~/.vim/syntax_tweaks.vim')
if filereadable(syntax_tweaks)
  execute 'source' syntax_tweaks
endif

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
let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/ctrlp'
let g:ctrlp_lazy_update = 100
let g:ctrlp_max_height = 20
let g:ctrlp_user_command = 'find %s -type f | grep -i -v -P "(\.(eot|gif|gz|ico|jpg|jpeg|otf|png|psd|pyc|svg|ttf|woff|zip)$)|(/\.)|((^|\/)tmp\/)"'
let g:ctrlp_working_path_mode = 0

" NERDTree settings
map <leader>d :NERDTree<CR>
let g:NERDTreeDirArrows=0

" Local .vimrc settings
let g:localvimrc_ask = 0
