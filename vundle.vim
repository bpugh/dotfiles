set nocompatible               " be iMproved
filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " Colors
Bundle 'altercation/vim-colors-solarized'

" Languages
Bundle 'kchmck/vim-coffee-script'
Bundle 'chrisbra/csv.vim'
Bundle 'tpope/vim-git'
Bundle 'nono/vim-handlebars'
" Bundle 'wlangstroth/vim-haskell'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'mmalecki/vim-node.js'
Bundle 'vim-ruby/vim-ruby'

" Plugins
 " like grep but better. Currently used with Ag
Bundle 'mileszs/ack.vim'
" Bundle 'Townk/vim-autoclose'
" Bundle 'vim-scripts/camelcasemotion'
"Bundle 'vim-scripts/ctags.vim'
 " quick search window
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
" Bundle 'henrik/vim-indexed-search'
 " easy syntax appropriate commenting
"Bundle 'ddollar/nerdcommenter'
 " provides a file system tree view
Bundle 'scrooloose/nerdtree'
" " Changed markdown preview to preview
" Bundle 'greyblake/vim-preview'
Bundle 'danro/rename.vim'
"Bundle 'tpope/vim-repeat'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
"Bundle 'scrooloose/syntastic' " syntax error checking
 " displays a list of ctags in a viewport
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/tComment'
" Bundle 'tpope/vim-rake'
Bundle 'mattn/zencoding-vim'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'


 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
