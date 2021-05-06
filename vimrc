" sane_defaults
set nocompatible
filetype off
filetype plugin indent on
set smartindent
set nu
set autoread
set guioptions-=m
set shortmess+=I
set undolevels=1000

set linebreak
set showbreak=+++
set textwidth=80
set showmatch

" cursorline_highlighting
set cursorline
hi CursorLine cterm=NONE ctermbg=233
hi CursorLineNr cterm=NONE ctermfg=255

" Remove statu line
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1

" Show whitespaces as you type
set list
set listchars=tab:>-,trail:~
map <leader>l :set list!<cr>

" Formatting
set expandtab
set shiftwidth=2
set shiftround
set tabstop=2
set softtabstop=2
set lazyredraw

" Interface
set ffs=unix,dos,mac
set encoding=utf-8
set scrolloff=9
set wildmenu
set showmatch
set mat=2
set ttyfast
set noshowmode

" Colors
syntax enable
set background=dark
"colorscheme dracula

" python
au FileType python setl ts=4 sw=4 sts=4 et
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'

" Search preferences
set ignorecase
set smartcase
set gdefault
set hls
set incsearch

" Vundle - plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Ctrl-P
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = '__pycache__\|node_modules'
map \ :CtrlPLine<cr>

Plugin 'scrooloose/syntastic'
Plugin 'crusoexia/vim-dracula'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'jingmiao/auto-pairs'
Plugin 'fisadev/vim-isort'
Plugin 'davidhalter/jedi-vim'
Plugin 'python-rope/ropevim'

" VimCompletesMe
autocmd FileType vim let b:vcm_tab_complete = 'vim'
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest
set completeopt-=preview
let g:vcm_direction='p'

call vundle#end()
