" Environment {

    " Basics {
        set nocompatible        " Must be first line
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if has('win32') || has('win64')
            set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
            source $VIMRUNTIME/mswin.vim
        endif
    " Vundle
        source ~/vundle.vim
" }
" key mappings {

    let mapleader = ","

    "Saves time; maps the spacebar to colon  
    nmap <space> :

    nnoremap Y y$ "make Y behave like other commands
    nnoremap s "0p "fast paste from yank register

    "navigate by row
    nnoremap j gj
    nnoremap k gk

    " navigate tabs like most editors
    " just another reason to love 
    nnoremap <C-S-Tab> :tabprevious<CR>
    nnoremap <C-Tab> :tabnext<CR>

    nnoremap <leader>s :wq<CR> "quick save and quit
    nnoremap <leader><space> :noh<cr>
    nnoremap <tab> %
    vnoremap <tab> %

    " NERDTree settings {{{
    " Put focus to the NERD Tree with F3 (tricked by quickly closing it and
    " immediately showing it again, since there is no :NERDTreeFocus command)
    nnoremap <leader>n :NERDTreeClose<CR>:NERDTreeToggle<CR>
    nnoremap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
    nnoremap <leader>N :NERDTreeClose<CR>
    
    map <F2> :NERDTreeToggle<CR>

    " Quickly get out of insert mode without your fingers having to leave the
    " home row
    inoremap jk <Esc> 
    inoremap kj <Esc> 

" }

    nnoremap / /\v
    vnoremap / /\v
    set ignorecase
    set smartcase
    set gdefault                    " search/replace 'globally' (on a line) by default
    set incsearch
    set showmatch
    set hlsearch
    set relativenumber
    set undofile
    set nomodeline                  " disable mode lines (security measure)

" Formatting {

    " set nowrap                      " Wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    "set matchpairs+=<:>             " Match, to be used with %
    " set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
    "set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
    " Remove trailing whitespaces and ^M chars
    " autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    " autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

" }

" Backups files
    set backupdir=~/.vim/tmp/backup// " backups  
    set directory=~/.vim/tmp/swap// " swap files
    set undodir=~/.vim/tmp/undo//
    set backup " enable backup  

