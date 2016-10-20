" VIM Configuration - Vincent Jousse
" " Cancel the compatibility with Vi. Essential if you want
" " to enjoy the features of Vim
set nocompatible
" " -- Display
set title " Update the title of your window or your terminal
set number " Display line numbers
set ruler " Display cursor position
set wrap " Wrap lines when they are too long
set scrolloff=3 " Display at least 3 lines around you cursor
" " (for scrolling)
set guioptions=T " Enable the toolbar
" " -- Search
set ignorecase " Ignore case when searching
set smartcase " If there is an uppercase in your search term
" " search case sensitive again
set incsearch " Highlight search results when typing
set hlsearch " Highlight search results
" " -- Beep
set visualbell " Prevent Vim from beeping
set noerrorbells " Prevent Vim from beeping
" " Backspace behaves as expected
set backspace=indent,eol,start
" " Hide buffer (file) instead of abandoning when switching
" " to another buffer
set hidden
filetype on
filetype plugin on
filetype indent on
" Activate the NERDTree when launching vim
autocmd vimenter * NERDTree
let g:NERDTreeWinPos = "left"
" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
:imap ii <Esc>
" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" " Add a mark and search
nmap <leader>j mA:Ack<space>
" " Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"
