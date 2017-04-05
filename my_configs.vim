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
"--------PLUGIN CONFIG--------"
"============================="
" Activate the NERDTree when launching vim
autocmd vimenter * NERDTree
let g:NERDTreeWinPos = "left"
" make nerdtree return to the buffer instead of staying in the window
autocmd VimEnter * wincmd p
" make vim close if nerdtree is last open tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
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
" map matching brace (%) to ,mb
nmap <leader>mb %
" map { to % instead of having to use {
nmap [ %
nmap y[ y%
" ctags mapping
" rerun tags
nmap <Leader>ct :!ctags -R --exclude=node_modules --exclude=vendor --exclude=public<cr>
nmap <Leader>f :tag<space>
"============================="
"--------CLIPBOARD------------"
"============================="
" make the clipboard shared between vim and the OS
" only works when vim --version | grep clipboard shows 
" +clipboard, you can install a new version of VIM to
" accomplish if needed
set clipboard=unnamed

"--------LEADER MAPS----------"
"============================="
" turn off search highlighting
nmap <leader><space> :nohlsearch<cr>
" Toggle Nerd Tree with ,nt
nmap <leader>nt :NERDTreeToggle<cr>
" Toggle line numbers
nmap <leader>n :set invnumber<cr>

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
" Map control + w + control + N for split management 
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
