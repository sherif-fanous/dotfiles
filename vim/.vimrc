" -----------------------------
" Plugin Manager
" -----------------------------

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" -----------------------------
" Plugins Configuration
" -----------------------------

call plug#begin()
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vimpostor/vim-lumen'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

" -----------------------------
" Plugin Configurations
" -----------------------------

let g:lumen_light_colorscheme = 'catppuccin_latte'
let g:lumen_dark_colorscheme = 'catppuccin_macchiato'

" -----------------------------
" General Settings
" -----------------------------

set term=xterm-256color
set termguicolors