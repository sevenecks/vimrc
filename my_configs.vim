" " Cancel the compatibility with Vi. Essential if you want
" " to enjoy the features of Vim
set nocompatible
"============================="
"---------DISPLAY-------------"
"============================="
set title " Update the title of your window or your terminal
set number " Display line numbers
" set terminal colors to 256
set t_CO=256
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
" make it so j and k move up and down even on wrapped lines"
nmap k gk
nmap j gj
"============================="
"--------LEADER MAPS----------"
"============================="
" map ,rce to edit the my_configs.vim file
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

"============================="
"-----------SPLITS------------"
"============================="
" " Open new split panes to the right and bottom, more natural
set splitbelow
set splitright
" Map control + w + control + N for splut management 
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
"map tab and tab tab to control + w
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>
"============================="
"-----------PLUGINS-----------"
"============================="
nmap <leader>p :CtrlP<cr>
nmap <leader>pr :CtrlPMRU<cr>
