
syntax on
filetype plugin indent on

set mouse=a
if has('mouse_agr')
	set ttymouse=sgr
endif

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set fo+=t

set laststatus=2
set number
set ruler
set showcmd

nmap j gj
nmap k gk
cmap W w
cmap Q q

set showmatch
set incsearch
set hlsearch
set lazyredraw
nnoremap <leader><space> :nohlsearch<CR>
nnoremap B ^
nnoremap E $
nnoremap I lI
nnoremap S hs
nnoremap e $h
vnoremap S <ESC>hs
vnoremap B ^
vnoremap E $
vnoremap e $h
"inoremap <silent> <Up> <ESC><UP>
"inoremap <silent> <Down> <ESC><Down>
inoremap ` <ESC>
vnoremap ` <ESC>
nnoremap Mk Hzz
nnoremap Mj Lzz
nnoremap mm M
nnoremap <C-k> Hzb
nnoremap <C-j> Lzt

imap sdf <ESC>
imap Sdf <ESC>
imap sfd <ESC>
imap dsf <ESC>
imap dfs <ESC>
"imap fds <ESC>
imap fsd <ESC>
vmap sdf <ESC>
vmap Sdf <ESC>
vmap sfd <ESC>
vmap dsf <ESC>
vmap dfs <ESC>
"vmap fds <ESC>
vmap fsd <ESC>
imap jk <ESC>
imap kj <ESC>
vmap jk <ESC>
vmap jk <ESC>
inoremap <S-tab> <BS><BS><BS><BS>
nnoremap <S-tab> <BS><BS><BS><BS>

" visual & '#' --> mass comment/uncomment
vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>

imap <RETURN># <RETURN>_#<ESC>hx
nmap O# O_#<ESC>hxA
nmap o# o_#<ESC>hxA

vmap wp whp

vnoremap // y/<C-R>"<CR>

nnoremap gV `[v`]

set whichwrap+=h,l

set clipboard=unnamedplus
