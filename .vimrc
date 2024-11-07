" DO NOT EDIT THIS FILE
" Add your own customizations in ~/.vim_runtime/my_configs.vim

" set nocompatible

set relativenumber number
syntax on
set ignorecase
" 
call plug#begin()
" 
" Language Related
Plug 'fatih/vim-go'

set termguicolors

" Plug 'airblade/vim-gitgutter'

" colorscheme
"Plug 'morhetz/gruvbox'
"Plug 'nordtheme/vim'
"Plug 'kepano/flexoki-neovim'
Plug 'chriskempson/base16-vim'

" List your plugins here
Plug 'tpope/vim-sensible'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Quality of Life plugins
Plug 'junegunn/fzf.vim'

" Interfaces
" Plug 'catppuccin/vim', { 'as': 'catppuccin' }
"Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" let g:airline_theme='transparent'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'romgrk/doom-one.vim'

call plug#end()
" 
" " shortcut
" " Set leader key to space
" let mapleader = " "

set list
set showbreak=↪
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set background=dark
" colorscheme nord
" colorscheme base16-black-metal
" colorscheme base16-grayscale-dark

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
	set nonumber norelativenumber
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
	set number relativenumber
    endif
endfunction

noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

nnoremap <S-h> :call ToggleHiddenAll()<CR>
