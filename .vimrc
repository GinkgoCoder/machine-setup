"import plugin and settings
source ~/.vim/.vundle.vim

"Vim Settings
"This may be changed based on the current machine
source /usr/share/vim/vim81/vimrc_example.vim

set nu
set tabstop=2 shiftwidth=2 expandtab
set lcs=space:·
set nobackup
set undodir=~/.vim/undofiles

augroup auFileTypes
    autocmd!
    autocmd FileType markdown setlocal textwidth=100
augroup end


let g:rainbow_active = 1

" Shortcuts setting
nnoremap <F10> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
cnoreabbrev nt NERDTreeToggle

"set nocompatible
"filetype off

"languageTool
"let g:languagetool_jar="/home/leisun/.vim/tool/LanguageTool-5.5/languagetool-commandline.jar"

"theme
"colorscheme gruvbox
"set background=dark
"let g:gruvbox_contrast='hard'
"let g:airline_theme='gruvbox'