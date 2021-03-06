set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'powerline/powerline'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

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

syntax on
imap jj <Esc>
set nolist

highlight CursorLineNr ctermfg=black ctermbg=green

set cursorline
highlight CursorLine cterm=none ctermfg=none ctermbg=black

let g:ycm_use_clangd = 0
let g:python3_host_prog = '/usr/local/bin/python3'

" enable powerline-status for vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" enable and style spell-check
"set spell spelllang=en_us
"hi clear SpellBad
"hi clear SpellCap
"hi clear SpellLocal
"hi clear SpellRare
"hi SpellBad cterm=underline
"hi SpellCap cterm=underline
"hi SpellLocal cterm=underline
"hi SpellRare cterm=underline

" Map leader to spacebar
let mapleader = "\<Space>"

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>


filetype plugin indent on

" Automatically change into the directory of opened file
" NOTE: This setting does not work with vimfiler plugin
" set autochdir

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Treated as a word boundary (though not a WORD boundary)
" set iskeyword-=_

" Make sure the status bar for airline stays showing
set laststatus=2

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Use spaces
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set nowrap
set textwidth=0

" Set line numbers
set relativenumber
set number

" Switch buffers without saving
set hidden

set linebreak

" note trailing space at end of next line
set showbreak=>\ \ \

" Show command typed
set showcmd

set clipboard=unnamed

set splitbelow
set splitright

let g:netrw_banner=0

" set foldmethod=marker
autocmd FileType vim setlocal foldmethod=marker

" keep folds on leave
au BufWinLeave *.c mkview
au BufWinEnter *.c silent! loadview

"Mode Settings

let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
