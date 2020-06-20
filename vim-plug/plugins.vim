if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" File navigator
Plug 'scrooloose/nerdtree'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" tagbar
Plug 'majutsushi/tagbar'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'vim-airline/vim-airline'
" Plug 'davidhalter/jedi-vim'

" Themes
Plug 'christianchiarulli/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'morhetz/gruvbox'
" Plug 'kyoz/purify', { 'rtp': 'vim' }

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'unblevable/quick-scope'

" Better Comments
Plug 'tpope/vim-commentary'

" Icons
Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" text-obects for surroundings bracess
Plug 'tpope/vim-surround'

call plug#end()
