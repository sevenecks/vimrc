" " Cancel the compatibility with Vi. Essential if you want
" " to enjoy the features of Vim
set nocompatible
set belloff=all " disable function error bells
"============================="
"---------DISPLAY-------------"
"============================="
set title " Update the title of your window or your terminal
set number " Display line numbers
" set terminal colors to 256
set t_CO=256
" we use lightline so we don't need the -- INSERT -- or -- VISUAL -- mode indicators
set noshowmode
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
" map { to % instead of having to use {
nmap [ %
nmap y[ y%
" ctags mapping
" rerun tags
nmap <Leader>ct :!ctags -R --exclude=node_modules  --exclude=public<cr>
nmap <Leader>f :tag<space>
" edit vimrc in a split
nnoremap <leader>ev :split ~/.vim_runtime/my_configs.vim<cr>
" refresh vim rc
nnoremap <leader>evr :source ~/.vimrc<cr>
" edit basic vim in split
nnoremap <leader>evb :split ~/.vim_runtime/vimrcs/basic.vim<cr>
" edit extended vim in split
nnoremap <leader>eve :split ~/.vim_runtime/vimrcs/extended.vim<cr>
" edit php snippets in a split
nnoremap <leader>es :split ~/.vim_runtime/snippets/php.snippets<cr>vGzO<cr>
" close syntastic error window
nnoremap <leader>sr :SyntasticReset<cr>
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
nmap <leader>v :set paste!<cr>
" resize +10
nmap <leader>r :resize +10<cr>
"============================="
"--------AUTO COMMANDS--------"
"============================="
augroup autosouring
    autocmd!
    " nested is required because of the lightline plugin, without it
    " we lose the lineline status bar on save
    autocmd BufWritePost my_configs.vim nested source ~/.vimrc
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
" remap controlp's <c-v> (control v) to default to opening splits with enter
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("h")': ['<cr>', '<RightMouse>'],
    \ }
"============================="
"--------VISUAL TWEAKS--------"
"============================="
" this broke vue rendering
"autocmd BufNewFile,BufRead *.vue set filetype=html "When opening or creating a .vue file set the filetype to HTML for proper rendering

"============================="
"-------LARAVEL MAPPINGS------"
"============================="
nmap <leader>lw :sp routes/web.php<cr>
nmap <leader>la :sp routes/api.php<cr>
