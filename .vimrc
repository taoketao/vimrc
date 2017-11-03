"call pathogen#infect()

filetype plugin indent on
set term=xterm-256color
syntax on

set mouse=a
if has('mouse_agr')
set ttymouse=sgr
endif
map <M-Esc>[62~ <ScrollWheelUp>
map! <M-Esc>[62~ <ScrollWheelUp>
map <M-Esc>[63~ <ScrollWheelDown>
map! <M-Esc>[63~ <ScrollWheelDown>
map <M-Esc>[64~ <S-ScrollWheelUp>
map! <M-Esc>[64~ <S-ScrollWheelUp>
map <M-Esc>[65~ <S-ScrollWheelDown>
map! <M-Esc>[65~ <S-ScrollWheelDown>

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set fo+=t

" set scrollbind
" use  :set scb! / scb  to toggle scrollbind off/on of current split

set laststatus=2
set number
set ruler
set showcmd

nmap j gj
nmap k gk
cmap W w
cmap Q q<bar>q
cmap "w w
cmap 'w w

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
inoremap \` `
inoremap ` <ESC>
vnoremap ` <ESC>
nnoremap Mk Hzz
nnoremap Mj Lzz
nnoremap mm M
nnoremap K kkkk
nnoremap J jjjj
nnoremap <C-j> Lzt
nnoremap <C-k> Hzb
nnoremap <C-h> <C-y><C-y><C-y><C-y>
nnoremap <C-l> <C-e><C-e><C-e><C-e>

imap sdf <ESC>
nmap sdf <ESC>
imap sdF <ESC>
imap Sdf <ESC>
imap sfd <ESC>
nmap sfd <ESC>
imap dsf <ESC>
imap dfs <ESC>
nmap dsf <ESC>
nmap dfs <ESC>
imap fds <ESC>
imap fsd <ESC>
vmap sdf <ESC>
vmap sfd <ESC>
vmap dsf <ESC>
vmap dfs <ESC>
vmap fds <ESC>
vmap fsd <ESC>
imap jk <ESC>
imap kj <ESC>
vmap jk <ESC>
vmap jk <ESC>
set timeout timeoutlen=300


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

au BufNewFile,BufRead *.wppl set filetype=js

" for vim-latex:
"set grepprg=grep\ -nH\ $*
"let g:text_flavor='latex'
"set sw=2
"set iskeyword+=:

func! WordProcessorMode()
  setlocal formatoptions=1
  setlocal spell spelllang=en_us
  set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
  set sw=2
  set iskeyword+=:
  hi clear SpellBad
  hi SpellBad ctermfg=DarkRed
  hi clear SpellLocal
  hi clear SpellRare
  vnoremap % :s%^%\%%<cr>
  vnoremap -% :s%^\%%%<cr>

endfu
com! PMODE call WordProcessorMode()

" added by apt-vim:
execute pathogen#infect()
call pathogen#helptags()


" nerdtree: 
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == 'primary') | q | endif
" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType")) | q | endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * NERDTreeMirror
autocmd BufWinEnter * NERDTreeMirror
" let NERDTreeQuitOnClose = 1
let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" toggle with f1:
nmap <silent> <F3> :NERDTreeToggle<CR>
