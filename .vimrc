" The vim config for editing C
set nocompatible
filetype off

" =======VIM SETTINGS========
" Forces terminal to be in 256 mode
set t_Co=256

syntax on
set backspace=indent,eol,start

" Word wrapping
set wrap linebreak nolist
set display+=lastline
"noremap gj j
"noremap gk k
"noremap k gk
"noremap j gj
" End of WW
" no Nerd Font Complete

" Autocomplete
set wildmode=longest,list,full
set wildmenu

" Show line number
" Overridden by Solarized
set number
set background=dark
highlight LineNr ctermfg=245 ctermbg=235
highlight EndOfBuffer ctermfg=232

" Tab Width
set cindent tabstop=2 softtabstop=2 expandtab shiftwidth=2

" If I happen to be using vimx
set clipboard+=unnamedplus
" =====VIM SETTINGS END======

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==========PLUGINS==========
" Solarized
Plugin 'altercation/vim-colors-solarized'

" Vundle
Plugin 'VundleVim/Vundle.vim'

" NerdTree
Plugin 'scrooloose/nerdtree'

" NerdCommenter
Plugin 'scrooloose/nerdcommenter'

" VimFugitive (Git wrapper)
Plugin 'tpope/vim-fugitive'

" Ctrl-P (Fuzzy dir search)
Plugin 'ctrlpvim/ctrlp.vim'

" Tagbar
Plugin 'majutsushi/tagbar'

" Airline
Plugin 'bling/vim-airline'

" Airline Themes
Plugin 'vim-airline/vim-airline-themes'

" DevIcons
Plugin 'ryanoasis/vim-devicons'

" NerdTree Syntax Highlight
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" DelimitMate
Plugin 'Raimondi/delimitMate'

" AsyncRun
Plugin 'skywind3000/asyncrun.vim'

" ToggleList
Plugin 'milkypostman/vim-togglelist'

" YouCompleteMe
Plugin 'valloric/youcompleteme'

" ========PLUGINS END========
call vundle#end()
filetype plugin indent on

" =========KEY BINDS=========

" C compile
map <c-r> :!bear make programs<CR>
map <c-f> :!./debug<CR>
map <c-s> :w<CR>

" Vim
" map <c-s> :w<CR>
set pastetoggle=<F12>
" The following trick is learned from the CIA, thanks guys!
"command W  w !sudo tee "%" > /dev/null

" NerdTree
map <Tab> :NERDTreeToggle<CR>

" Tagbar
map <c-t> :TagbarToggle<CR>

" CtrlP
map <c-p> :CtrlP<CR>

" Next File
map <c-n> :next |

" ToggleList
map <c-f1> :call ToggleLocationList()<CR>
map <c-f2> :call ToggleQuickfixList()<CR>
" =======KEY BINDS END=======

" ======PLUGIN SETTINGS======
" DevIcon
let g:webdevicons_enable = 1

let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 0
let g:webdevicons_enable_airline_statusline = 0

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Vim-Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='simple'

if !exists('g:airline_symbols')
        let g:airline_symbols={}
endif

let g:airline_symbols.notexists='*' "Missing symbol in Powerline droid

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

" ToggleList
let g:toggle_list_no_mappings=1

" ====PLUGIN SETTINGS END====
