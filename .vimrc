"------------------------------------------------------------
" Plugins (Vundle)
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'tpope/vim-fugitive'
Plugin 'mbbill/undotree'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"------------------------------------------------------------
" Styling
"
syntax enable
set background=dark
"let g:airline_theme='Atelier_CaveDark'
set term=screen-256color
colorscheme Atelier_CaveDark

"------------------------------------------------------------
" Settings 
"
set hidden
set path+=**
set wildmenu
set showcmd
set hlsearch
set nomodeline
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set confirm

set number
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab
set foldmethod=marker
set foldlevelstart=1
set splitbelow
set splitright
set colorcolumn=81
set visualbell
set ttyfast
set listchars=tab:▸\ ,eol:¬

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

"------------------------------------------------------------
" Mappings 
"
let mapleader=' '

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Tab> za

nnoremap <leader>h :%s/\v
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

nnoremap <leader>g :UndotreeToggle<CR>
nnoremap g= g+
nnoremap Y y$

"------------------------------------------------------------
" Mintty Compatibility 
"
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

nnoremap gp `[v`]


