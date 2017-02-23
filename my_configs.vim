" " Cancel the compatibility with Vi. Essential if you want
" " to enjoy the features of Vim
set nocompatible
" " -- Display
set title " Update the title of your window or your terminal
set number " Display line numbers
" " (for scrolling)
" " Open new split panes to the right and bottom, more natural
set splitbelow
set splitright

"============================="
"---------MAPPINGS------------"
"============================="
" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" map jk to escape key in insert mode 
:imap jk <Esc>
" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
"map tab and tab tab to control + w
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>
" make it so j and k move up and down even on wrapped lines"
nmap k gk
nmap j gj
" map ,ev to edit the my_configs.vim file
nmap <leader>rce :tabedit ~/.vim_runtime/my_configs.vim<cr>
" turn off search highlighting
nmap <leader><space> :nohlsearch<cr>
"============================="
"--------AUTO COMMANDS--------"
"============================="
augroup autosouring
    autocmd!
    autocmd BufWritePost my_configs.vim source $MYVIMRC
augroup END
