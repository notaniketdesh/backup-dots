set autoindent " Set autoindention then you go inside a function or smth like this
set smartindent
set clipboard+=unnamedplus " Enable clipboard (if you compiled you vim with it)
set guioptions+=a " Ability to change gui things
set softtabstop=2 " Set tabs with two spaces
set linespace=2
set tabstop=2
set shiftwidth=2
set t_Co=256 
set number " Set line number (nonumber/number/relativenumber)
set expandtab " Replace tabs to spaces (too helpful for lans like python)
set hlsearch " Highlight any results
set incsearch " Search while you are typing
set ruler " Show the cursor anytime
set nobackup " Do not create crappy backups/swaps and another stuff
set noswapfile
set nocompatible " Disable vim's compatibility mode
set encoding=utf-8
set fileencodings=utf-8,cp1251
filetype plugin indent on

call plug#begin('~/.config/nvim/autoload')

Plug 'jiangmiao/auto-pairs' 
Plug 'navarasu/onedark.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'cespare/vim-toml'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'junegunn/fzf'

call plug#end()

" APPEARANCE
syntax on
colorscheme onedark
hi Normal ctermbg=NONE

" Vimtex Settings
let g:tex_flavor='latex'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:livepreview_previewer = 'zathura'

" Ultisnips Settings
"let g:UltiSnipsExpandTrigger = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Airline Settings
let g:airline_theme="onedark"  
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 1

" MAPS
let g:mapleader=' '

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
map <Leader>e :NERDTreeToggle<CR>
map <Leader>f :FZF<CR>

nnoremap <Leader>s :source %<CR>
nnoremap <Leader>p :PlugInstall<CR>
nnoremap <Leader>lp :LLPStartPreview<CR>

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>bd :bd<CR>

nnoremap <Leader>vs :vs<CR>
nnoremap <Leader><Right> <C-W><C-L>
nnoremap <Leader><Left> <C-W><C-H>
nnoremap <Leader><Down> <C-W><C-J>
nnoremap <Leader><Up> <C-W><C-K>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


