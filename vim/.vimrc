" --- Bootstrap vim-plug (Auto-install) ---
" Ensures vim-plug is installed on first run
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

" --- Plugins ---
call plug#begin('~/.vim/plugged')
    " Syntax & Language Support
    Plug 'sheerun/vim-polyglot'

    " Themes
    Plug 'sainnhe/sonokai'
call plug#end()

" --- Settings ---
" Enable True Color support
if has('termguicolors')
    set termguicolors
endif

" --- Theme Configuration ---
" Apply theme only if installed (Safe loading)
try
    " Configuration for sonokai
    " let g:sonokai_style = 'default'
    " let g:sonokai_enable_italic = 1
    
    colorscheme sonokai
catch
    " Fallback if theme not installed yet
    colorscheme default
endtry
