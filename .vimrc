set nocompatible              " be iMproved, required
filetype off                  " required

" vundle setting
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'           " Vim plugin manager
Plugin 'vim-airline/vim-airline'        " Status/tabline
Plugin 'vim-airline/vim-airline-themes' " Theme for aireline
Plugin 'NLKNguyen/papercolor-theme'     " Papercolor theme
Plugin 'scrooloose/nerdtree'            " File manager
Plugin 'ctrlpvim/ctrlp.vim'             " Fuzzy file/buffer finder
Plugin 'elixir-lang/vim-elixir'         " Elixir syntax support
Plugin 'tpope/vim-endwise'              " Adding end
Plugin 'tpope/vim-commentary'           " Adding comment
Plugin 'junegunn/vim-easy-align'        " Alignment helper

call vundle#end()            " required
filetype plugin indent on    " required

" general setting
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h20
set showcmd
set laststatus=2
set ruler
set number
set relativenumber
set cursorline
set cursorcolumn
set colorcolumn=80
set hlsearch
set incsearch

" theme setting
syntax enable
set background=light
colorscheme PaperColor

" clear highlight search
nnoremap \ :noh<CR>

" more ways to escape
imap jj <ESC>
map <TAB> <ESC>

" swap : with ;
noremap ; :
noremap : ;

" switch tabs
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-0> :tablast<CR>

" disable arrow keys
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" plugin setting: airline
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'

" plugin setting: NERDTree
map <C-e> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" plugin setting: CtrlP
let g:ctrlp_cmd = 'CtrlPBuffer'

" plugin setting: Easy Align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
