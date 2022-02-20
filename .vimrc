"import plugin and settings
source ~/.vim/.vundle.vim
"theme
"colorscheme material
"languageTool
"let g:languagetool_jar="/home/leisun/.vim/tool/LanguageTool-5.5/languagetool-commandline.jar"
let g:rainbow_active=1
let g:airline_theme='light'

"Normal Settings
source /usr/share/vim/vim81/vimrc_example.vim

set nu
set tabstop=2 shiftwidth=2 expandtab
set lcs=space:·


augroup auFileTypes
    autocmd!
    autocmd FileType markdown setlocal textwidth=100
augroup end

"set nocompatible
"filetype off

set nobackup
set undodir=~/.vim/undofiles

nnoremap <C-f> :NERDTreeToggle<CR>
