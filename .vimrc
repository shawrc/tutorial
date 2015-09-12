" Install Vundle
" =============================================================================
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'altercation/vim-colors-solarized'

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
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

let g:color_coded_enabled = 1

set modifiable
let g:NERDTreeWinPos = "right"
let g:NERDTreeMapOpenInTab='t'
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autofind = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_focus_on_files = 1

let g:solarized_termtrans = 1
" =============================================================================

syntax on
filetype on
filetype indent on
filetype plugin on

set background=dark
colorscheme solarized


set showcmd         " display incomplete commands
set backspace=2     " make backspace work like most other apps
set sm              " show matching braces
set nu
" Line number color
hi LineNr ctermfg=darkgray ctermbg=black

" Silent the error beep
set vb t_vb=

" Set indent
set smarttab
set smartindent
set autoindent      " auto indent
set tabstop=8       " set tab character to 8 characters
set expandtab       " turn tabs into whitespace
set softtabstop=2
set shiftwidth=2    " indent width for auto-indent
set nowrap          " don't wrap lines
set ruler

set clipboard=unnamed
set showcmd
set wildmenu

"set foldmethod=indent
"set foldnestmax=2

"set cursorline
"hi cursorline term=reverse ctermbg=darkgrey guibg=darkgrey

set lazyredraw

set backspace=indent,eol,start

" revert to the last cursor position, if the file was opened
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Make it so that tabs and trailing spaces are always visible:
" (Relys on syntax highlighting to turn them yellow.)
set list!
set listchars=tab:»·,trail:·
" Trim ending whitespaces upon save
autocmd BufWritePre * :%s/\s\+$//e

" turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase      " ignore case when searching
set smartcase
set hlsearch        " Highlight previous search results

" Have 3 lines of offset (or buffer) when scrolling
set scrolloff=3

" Statusline
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set laststatus=2

" Background of popup menu
"hi Pmenu guibg=brown gui=bold ctermbg=darkgrey ctermfg=darkgrey
"hi Visual term=reverse ctermbg=darkgrey guibg=darkgrey

hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" Show right margin
set colorcolumn=80      " for vim73 and upper

" Enable mouse support in console
set mouse=a

" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
map <C-a> <Home>
map <C-e> <End>
imap <C-a> <Home>
imap <C-e> <End>
