" Tabs
map <A-Right> gt
map <A-Left> gT
" Save
nmap <C-S> <Esc>:w<CR>
imap <C-S> <Esc>:w<CR>
vmap <C-S> <Esc>:w<CR>
" Remplace
nmap <F2> :s/\<<C-R>=expand("<cword>")<CR>\>//<Left>
vmap <F2> ygv:<C-U>s/\<<C-R>"\>//<Left>
nmap <F3> :%s/\<<C-R>=expand("<cword>")<CR>\>//g<Left><Left>
vmap <F3> ygv:<C-U>%s/\<<C-R>"\>//g<Left><Left>
map <F10> :!find . -name "*.php" -exec sed -i 's/=expand("<cword>")//g' {} \;<left><left><left><Left><left><left><left><left><left>
"vmap <F10> :!find . -name "*.php" -exec sed -i 's/=expand("<cword>")//g' {} \;<left><left><left><Left><left><left><left><left><left>
""" Auto brackets
inoremap "" ""<Esc>i
inoremap ""; "";<Esc>hi
inoremap '' ''<Esc>i
inoremap ''; '';<Esc>hi
inoremap /**<CR> /**<CR>*<CR>*/<Esc>hi

inoremap << <><Esc>i
inoremap </ </><Esc>i
inoremap <</ </><Esc>hi
inoremap <<! <!--  --><Esc>hhhi

inoremap (( ()<Left>
inoremap (<CR> (<CR>)<C-o>O
inoremap (; ();<Esc>hi
inoremap (<CR>; (<CR>);<C-o>O
inoremap ('; ('');<Esc>hhi
inoremap ("; ("");<Esc>hhi
inoremap (' ('')<Esc>hi
inoremap (" ("")<Esc>hi

inoremap {{ {}<Left>
inoremap {{<CR> {{}}<Left><left>
inoremap {%<CR> {%%}<Left><left>
inoremap {<CR> {<CR>}<C-o>O
inoremap {; {};<Esc>hi
inoremap {<CR>; {<CR>};<C-o>O
inoremap {'; {''};<Esc>hhi
inoremap {"; {""};<Esc>hhi
inoremap {' {''}<Esc>hi
inoremap {" {""}<Esc>hi
inoremap {{{ {{{ }}}<Esc>hhhi
inoremap {{{<CR> {{{ <CR>}}}<Esc>kA

inoremap [[ []<Left>
inoremap [<CR> [<CR>]<C-o>O
inoremap [; [];<Esc>hi
inoremap [<CR>; [<CR>];<C-o>O
inoremap ['; [''];<Esc>hhi
inoremap ["; [""];<Esc>hhi
inoremap [' ['']<Esc>hi
inoremap [" [""]<Esc>hi

set fileformat=unix
set encoding=utf-8
set number
syn on
set nocompatible 
set shiftwidth=2
set tabstop=2
set nowrapscan
set ignorecase
set expandtab
set showtabline=2
set foldmethod=marker
set hlsearch
set paste
set listchars=eol:¤,trail:-
set mouse=a
set nobackup       
set nowritebackup 
set noswapfile   
filetype on
"set complete=.,w,b,u,t,i,k~/.vim/syntax/php.api
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"source ~/.vim/plugin/word_complete.vim
"call DoWordComplete() 
:let mapleader = ","
runtime! ~/.vim/plugin/Project.vim
nmap ,1 \1
map <F4> :!ctags -R .
map <F6>  :TlistToggle<cr>
map <F7> :NERDTreeToggle<cr>
map <F9>  :se nu<cr>
map <F8>  :se nonu<cr>
imap <c-space> <c-x><c-o>
" Changement de configuration lors des transitions
" mode commande & mode insertion
autocmd insertLeave * set nocursorline
autocmd insertEnter * set cursorline
autocmd insertLeave *.yml set nocursorcolumn
autocmd insertEnter *.yml set cursorcolumn
au BufRead,BufNewFile *.twig set syntax=htmljinja
"  Le choix des couleurs...
" highlight CursorLine                    cterm=none ctermbg=DarkBlue
highlight CursorColumn                  cterm=none ctermbg=DarkRed
highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=#353333 guifg=white
set autoindent
set nowrap
nnoremap <A-DOWN> :m+<CR>==
nnoremap <A-UP> :m-2<CR>==
inoremap <A-DOWN> <Esc>:m+<CR>==gi
inoremap <A-UP> <Esc>:m-2<CR>==gi
vnoremap <A-DOWN> :m'>+<CR>gv=gv
vnoremap <A-UP> :m-2<CR>gv=gv

set laststatus=2
let b:current_syntax = "twig"
