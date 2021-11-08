set guifont=Menlo:h14
set guioptions-=r  " Remove right-hand scroll bar
set guioptions-=L  " Remove left-hand scroll bar
set guioptions+=c  " Use console confirmation dialogs

set colorcolumn=
nnoremap <leader>s <NOP>
unlet g:ctrlp_user_command
set clipboard=unnamed

" Solarized tweaks
highlight BadWhitespace guibg=#dc322f
highlight Error guibg=#dc322f guifg=#002b36
highlight ErrorMsg guibg=#dc322f guifg=#002b36
highlight IncSearch guibg=#073642
highlight MatchParen guibg=#002b36 gui=underline
highlight NonText guifg=#002b36
highlight Search guibg=#073642
highlight SpecialKey guibg=#002b36 guifg=#073642
highlight StatusLine guibg=#93a1a2 guifg=#073642
highlight StatusLineNC guibg=#657b83 guifg=#073642
highlight VertSplit guibg=#002b36 guifg=#002b36
highlight Visual guibg=#073642
highlight WarningMsg guibg=#b58900 guifg=#002b36
