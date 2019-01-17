set nocompatible             " be iMproved, required
filetype off                 " required

" Vundle setting
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
Plugin 'mhinz/vim-mix-format'           " Elixir code formatter
Plugin 'easymotion/vim-easymotion'      " Motion on speed
Plugin 'tpope/vim-commentary'           " Adding comment
Plugin 'tpope/vim-surround'             " Surround
Plugin 'junegunn/vim-easy-align'        " Alignment helper

call vundle#end()            " required
filetype plugin indent on    " required

" general setting
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h18 " powerline font
set guioptions-=r                                " hide right scroll bar
set guioptions-=L                                " hide left scroll bar
set laststatus=2                                 " always show status
set showcmd                                      " show command
set ruler                                        " display ruler
set number                                       " display line number
set relativenumber                               " display relative line number
set cursorline                                   " display horizontal cursor line
set cursorcolumn                                 " display vertical cursor line
set colorcolumn=80                               " set a line marker
set hlsearch                                     " enable highlight search
set incsearch                                    " enable incremental search
set list                                         " display invisible characters
set listchars=tab:▸\ ,eol:¬,trail:•              " set invisible characters

" theme setting
syntax enable
set background=light
colorscheme PaperColor

" erlang indentation
autocmd FileType erlang set shiftwidth=4
autocmd FileType erlang set tabstop=8
autocmd FileType erlang set expandtab

" clear highlight search
nnoremap <BS> :nohlsearch<CR>

" another way to escape from Insert Mode
imap jj <ESC>

" swap : with ;
noremap ; :
noremap : ;

" [Y]ank to eol
noremap Y y$

" [d]elete all text
nnoremap <leader>d :%d<CR>

" [c]opy all text to system clipboard
nnoremap <leader>c :%y*<CR>

" [r]eplace current text with system clipboard and save
nnoremap <leader>r :%d<CR>"*P:w<CR>

" [Q]uit all buffers without saving (USE WITH CAUTION)
nnoremap <leader>Q :qa!<CR>

" Quick change raw JSON to Elixir map
nnoremap <leader>j :%s/null/nil/g<CR>:%s/{/%{/g<CR>:%s/:/: /g<CR>

" Open NERDTree with current open file
nnoremap <leader>t :NERDTree %<CR>

" better navigation in command mode
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" switch tabs
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-0> :tablast<CR>

" disable arrow keys for good
noremap     <Up> <NOP>
noremap   <Down> <NOP>
noremap   <Left> <NOP>
noremap  <Right> <NOP>
inoremap    <Up> <NOP>
inoremap  <Down> <NOP>
inoremap  <Left> <NOP>
inoremap <Right> <NOP>

" plugin setting: airline
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_section_x = '%{&filetype}'
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
noremap <C-t> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" plugin setting: CtrlP
let g:ctrlp_cmd = 'CtrlPMRU'

" plugin setting: Easy Align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" plugin setting: Easy Motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase  = 1
nmap <Space> <Plug>(easymotion-overwin-f)
