" =================
" options
" =================

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" clipboard remap at the bottom
" set clipboard=unnamedplus

" disable swap files and backups
set noswapfile
set nobackup
set nowritebackup
set noundofile

set relativenumber number
syntax on
set ignorecase
" set termguicolors

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" ===================
" theme
" ===================

colorscheme habamax

" Make background transparent
highlight Normal       guibg=NONE ctermbg=NONE
highlight NormalNC     guibg=NONE ctermbg=NONE
highlight SignColumn   guibg=NONE ctermbg=NONE
highlight VertSplit    guibg=NONE ctermbg=NONE
highlight StatusLine   guibg=#2c212e guifg=#db7692 ctermbg=NONE
highlight NormalFloat  guibg=NONE ctermbg=NONE
highlight FloatBorder  guibg=NONE ctermbg=NONE
highlight Visual       guibg=#403d52 guifg=NONE gui=NONE

" Define the highlight group for Git status segment
highlight StatuslineGit guifg=#191724 guibg=#eb6f92

" Set the statusline
set laststatus=2
set statusline=\ [%{mode()}]%h%m%r\ %*%=%y\ %{&fileencoding}\ %l:%c\  

" set list
" set showbreak=↪
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
" set background=dark

filetype plugin on

let mapleader = " "

set path+=**
set wildmenu

" highlight searches with incremental
set hlsearch
set incsearch
" clear the search with <leader>n
nnoremap <Esc> :nohlsearch<CR><Esc>


" ==================
" keymaps
" ==================

vnoremap <silent> < <gv
vnoremap <silent> > >gv

" nnoremap y "+y
" nnoremap p "+p

nnoremap <leader>bb :bnext<CR>
nnoremap <leader>bh :bprev<CR>
nnoremap <leader>bd :bdelete<CR>

" ==================
" disable arrow keys
" ==================

noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

" ==================
" vimplug
" =================

call plug#begin()

nnoremap <leader>pi :source $MYVIMRC \| PlugInstall<CR>
nnoremap <leader>pc :source $MYVIMRC \| PlugClean<CR>
nnoremap <leader>pu :source $MYVIMRC \| PlugUpdate<CR>
nnoremap <leader>pg :source $MYVIMRC \| PlugUpgrade<CR>
nnoremap <leader>ps :source $MYVIMRC<CR>

" QOL Plugins
"" FZF plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <leader>ff :Files<CR>
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>/ :Rg<CR>

"" Bufferline
Plug 'bling/vim-bufferline'

"" Git gutter
Plug 'airblade/vim-gitgutter'

"" NERD commenter
Plug 'preservim/nerdcommenter'

"" Fugitive.vim
Plug 'tpope/vim-fugitive'

"" Trace.vim - live substitution
Plug 'markonm/traces.vim'

"" Indentline
Plug 'yggdroot/indentline'

"" Auto-pair
Plug 'jiangmiao/auto-pairs'

"" Neotree
Plug 'preservim/nerdtree'

nnoremap <leader>e :NERDTreeToggle<CR>

" -----------------------------

" Language Specific
Plug 'w0rp/ale'

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1

"" Vim GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"" which-key support
Plug 'liuchengxu/vim-which-key'

" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

call plug#end()
