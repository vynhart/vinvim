set nocompatible

" autocmd vimenter * NERDTree

" Vundle
" filetype off

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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'https://github.com/fatih/vim-go'
Plugin 'kylef/apiblueprint.vim'
Plugin 'posva/vim-vue'
Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'moll/vim-bbye'
Plugin 'StanAngeloff/php.vim'

call vundle#end()
filetype plugin indent on
syntax on

" if $COLORTERM == 'gnome-terminal'
"   set t_Co=256
" endif

" Solarized Theme
" let g:solarized_termcolors=256  " Access colors present in 256 colorspace
" colorscheme solarized
" colo solarized
" set background=dark

" Miramare Theme
set termguicolors
" the configuration options should be placed before `colorscheme miramare`
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
colorscheme miramare

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
nnoremap q :Bdelete<CR>
nnoremap <C-x> :q<CR>
nnoremap <C-S-x> :q!<CR>
nnoremap <C-u> gT
nnoremap <C-i> gt
nnoremap <C-f> :CtrlSF
nnoremap <silent> <unique> <Space> <PageDown>
nnoremap <silent> <unique> <S-Space> <PageUp>
nmap <silent> ,. :nohlsearch<CR>
nmap <silent> { [m
nmap <silent> } ]M
"nnoremap <F5> :edit!<CR>

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
let g:syntastic_check_on_wq = 0

" Airline
" ********************************************************************
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
"   endif
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='miramare'

" nerdtree ignore log
:let g:NERDTreeIgnore=['\~$', 'log\/']

" Edit vimrc shortcut
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <F8> :TagbarToggle<CR>

" eslint for javascript
nmap <C-d> <Plug>(ale_fix)

" CTRLSF
" let g:ctrlsf_case_sensitive = 'no'
let g:ctrlsf_extra_backend_args = {
    \ 'ag': '--ruby --haml --yaml --json --go --markdown --js'
    \ }

runtime macros/matchit.vim

" Default global searching
set gdefault

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_max_files=150000


" let g:ale_fixers = {
"   \ 'javascript': ['eslint']
"   \ }

" golang linter
" set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" snippet
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" let g:syntastic_go_checkers = ['golint']
:set redrawtime=10000

" Indent
" ********************************************************************
set number
set tabstop=4
"set softtabstop=0 noexpandtab
"set noexpandtab
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set expandtab
