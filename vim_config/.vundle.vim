" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdcommenter'
Plugin 'dense-analysis/ale'
Plugin 'jiangmiao/auto-pairs'
Plugin 'frazrepo/vim-rainbow'
Plugin 'tpope/vim-surround'
Plugin 'kaicataldo/material.vim'
Plugin 'junegunn/fzf'
Plugin 'python-mode/python-mode'
Plugin 'preservim/tagbar'

"YouCompleteMe need additional setup -- https://github.com/ycm-core/YouCompleteMe
"Plugin 'ycm-core/YouCompleteMe'
"Plugin 'morhetz/gruvbox'
"Plugin 'dpelle/vim-LanguageTool'

call vundle#end() " required
filetype plugin indent on " required