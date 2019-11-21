" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible

" This file must be called .vimrc and must be located in ~ directory.
" Configure Vundle at first by typing:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Then open this .vimrc and run the command :PluginInstall to download the
" Plugins in this file.


"""""""""""""""""""""""""""""PLUGINS-VUNDLEE"""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
" The Best way to add Plugins is to add them here by adding the name of the
" repository like shown bellow
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'   " Use tab to autocomplete
Plugin 'flazz/vim-colorschemes'  " one stop shop for vim colorschemes, add the colorscheme command under this line.
Plugin 'scrooloose/nerdtree' " file explorer for vim
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set laststatus=2  "this is for the 'itchyny/lightline.vim' Plugin
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" indentLine plugin, keep it uncommitted, looks way better this way
" let g:indentLine_setColors = 0

"""""""""""""""""""""""""""""""MY-SETUP"""""""""""""""""""""""""""""""""""


"To activate spell for English
set spell spelllang=en_us  

"Show the line number
set number  

" Have no idea what is this
" set relativenumber 

" enable syntax highlighting
syntax on

" show the editing mode on the last line
set showmode

" highlight matching search strings
set hlsearch

" make searches case insensitive
set ignorecase

"Always show current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch

" Enable smart-case search
set smartcase 

"Allows you to click around the text editor with your mouse to  move the cursor
" set mouse=a

" Refresh time of the file
set updatetime=100

" show a visual line under the cursor's current line
" set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" visual auto-complete for command menu
set wildmenu

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" Find the next match as we type the search
set incsearch

"Store lots of :cmdline history
set history=500

" Indentation rules for different filetypes
filetype plugin indent on

" Gets rid of beeping sound
set noerrorbells

" Blink cursor on error instead of beeping (grr)
set visualbell

" Hide the mouse when typing
set mousehide

" Show file stats
set ruler

" Status bar
set laststatus=2

" 
set autoindent

" 
set smarttab   

" enable all python syntax highlighting features
let python_highlight_all = 1


" Replace tabs with white spaces
set expandtab

" redraw only when we need to
set lazyredraw

" Keep more info in memory to speed things up:
set hidden



""""""""""""""""""""""""""""""""REMAPS""""""""""""""""""""""""""""""""""""""

" move vertically by visual line (These two allow us to move around lines
" visually. So if there's a very long line that gets visually wrapped to two
" lines, j won't skip over the "fake" part of the visual line in favor of the
" next "real" line.)
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>




" My favorit colorschemes:
" colorscheme badwolf
 colorscheme risto  " transparent
" colorscheme harlequin
" colorscheme happy_hacking
" colorscheme onedark
" colorscheme vimbrains 
" colorscheme gruvebox
" colorscheme badwolf
" colorscheme vim-material  " transparent
" colorscheme candycode
"
"


" If previous buffer was NERDTree, go back to it, settings for the Nerdtree
" plugin.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif
