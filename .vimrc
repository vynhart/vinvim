set nocompatible

" autocmd vimenter * NERDTree

" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chriskempson/base16-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-rails'
Plugin 'ngmy/vim-rubocop'
Plugin 'vim-ruby/vim-ruby'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'https://github.com/fatih/vim-go'

call vundle#end()
filetype plugin indent on

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let g:solarized_termcolors=256  " Access colors present in 256 colorspace
"colo solarized
colo mustang
set background=dark
syntax on

let mapleader=","

" Basic Settings
" ********************************************************************
set hlsearch
set smartcase
set incsearch
set pastetoggle=<F2>
" I dont like vim's backup mechanism, annoying for me, i never used it anyway.
set nobackup
set noswapfile

" Basic mapping
" ********************************************************************
inoremap jk <ESC>
nnoremap s :w<CR>
nnoremap q :q<CR>
nnoremap <C-u> gT
nnoremap <C-i> gt
nnoremap <C-f> :CtrlSF
nnoremap <C-x> <Esc>
nnoremap <silent> <unique> <Space> <PageDown>
nnoremap <silent> <unique> <S-Space> <PageUp>
nmap <silent> ,. :nohlsearch<CR>
nmap <silent> { [m
nmap <silent> } ]M
nmap <F5> :edit!<CR>

" NERDTree
" ********************************************************************
nmap <silent> <unique> <leader>n :NERDTreeToggle<CR>
nmap <silent> <unique> <leader>/ :NERDTreeFind<CR>

" Tmux
" ********************************************************************
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Indent
" ********************************************************************
set number
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Edit buffer
" ********************************************************************
nmap <unique> <leader>ew :e %%
nmap <unique> <leader>es :sp %%
nmap <unique> <leader>ev :vsp %%
nmap <unique> <leader>et :tabe %%

" Syntastic
" ********************************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

filetype plugin on
let g:airline_powerline_fonts = 1
let g:airline_theme='ubaryd'
let g:airline#extensions#tabline#enabled = 1

" Edit vimrc shortcut
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

runtime macros/matchit.vim
