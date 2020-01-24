set nocompatible  " be iMproved, required
filetype on       " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" solarized
Plugin 'git://github.com/altercation/vim-colors-solarized.git'

" bufexplorer
Plugin 'git://github.com/jlanzarotta/bufexplorer.git'

" header/source
Plugin 'git://github.com/vim-scripts/a.vim.git'

" JSON highlight
Plugin 'git://github.com/elzr/vim-json.git'

" JSON formatter
Plugin 'git://github.com/vim-scripts/json-formatter.vim.git'

" taglist
"Plugin 'git://github.com/vim-scripts/taglist.vim.git'

" c++ highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

behave mswin
filetype plugin indent on    " required
filetype plugin on
filetype indent on

"-Theme------------------------------------------------------------------------------------
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"-------------------------------------------------------------------------------------------
if has("gui_running")
    map  <silent>  <S-Insert>  "+p
    imap <silent>  <S-Insert>  <Esc>"+pa
endif
"-------------------------------------------------------------------------------------------
set nobackup

set updatetime=0
set novisualbell
set t_vb=
set showtabline=2 "show always
set guioptions+=aemgT

set ruler
set statusline=%<%F\ %p%%\ %m\ %r\ %{&encoding}\ %l/%L,%c\ %P\ %{&ff} 
set laststatus=2
set number

set showcmd
set cmdheight=1

set foldmethod=syntax

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set smartindent

set foldcolumn=2
set autochdir
set hidden
set nowrap
set linebreak
set undolevels=250
set history=64
set noswapfile
set virtualedit=all
set keymodel=startsel
set incsearch
set hlsearch
set ignorecase
set scrolljump=7
set scrolloff=7

"turn on  mouse for text mode
set mouse=a
set mousemodel=popup
set mousehide

set cursorline

set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866

set sessionoptions=curdir,buffers,tabpages,options,winpos,winsize

" BufExplorer
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>
" prev buffer
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i
" next buffer
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" Navigation
map <F12> :Ex<cr>
vmap <F12> <Esc>:Ex<cr>i
imap <F12> <Esc>:Ex<cr>i

" Shifting blocks
vmap < <gv
vmap > >gv

map <C-q> <Esc>:qa!<cr>
map <Leader><Esc> :qa!<cr>

set wildmenu
set wildcharm=<Tab>

menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

imap [ []<LEFT>
imap { {}<LEFT>
imap ( ()<LEFT>

set completeopt=longest,menuone,preview

" session
autocmd VimEnter * call LoadSession()
autocmd VimLeave * call SaveSession()

function! SaveSession()
    silent execute 'mksession! $HOME/.vim/session.vim'
endfunction

function! LoadSession()
    if argc() == 0
        silent execute 'source $HOME/.vim/session.vim'
    endif
endfunction
