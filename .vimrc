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
    syntax enable
" key mappings {

    let mapleader = ","

    "Saves time; maps the spacebar to colon
    nmap <space> :

    "Shortcut for editing  vimrc file in a new tab
    nmap <leader>ev :tabedit $MYVIMRC<cr>

    "fix line endings
    nnoremap <leader>ed :e ++ff=dos<cr>

    "make Y behave like other commands
    nnoremap Y y$
    "fast paste yank register
    nnoremap s "0P

    "navigate by row
    nnoremap j gj
    nnoremap k gk

    nnoremap <leader>s :Ack '<C-R><C-W>'

    "paste default buffer on newline and autoindent
    nnoremap <leader>v o<C-R>"<ESC>

    "remove trailing whitespace
    nnoremap <Leader>w :%s/\s\+$//e<CR>

    " navigate tabs like most editors
    " just another reason to love
    nnoremap <C-S-Tab> :tabprevious<CR>
    nnoremap <C-Tab> :tabnext<CR>
    nnoremap J :tabprevious<CR>
    nnoremap K :tabnext<CR>

    "quick save and quit
    "nnoremap <leader>s :wq<CR>

    nnoremap <leader><space> :noh<cr>
    nnoremap <tab> %
    vnoremap <tab> %

    " Switch between the last two files
    nnoremap <leader><leader> <c-^>

    " NERDTree settings {{{
    " Put focus to the NERD Tree with F3 (tricked by quickly closing it and
    " immediately showing it again, since there is no :NERDTreeFocus command)
    nnoremap <leader>n :NERDTreeClose<CR>:NERDTreeToggle<CR>
    nnoremap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
    nnoremap <leader>N :NERDTreeClose<CR>

    " Quicker window movement
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-h> <C-w>h
    nnoremap <C-l> <C-w>l

    map <F2> :NERDTreeToggle<CR>

    " Quickly get out of insert mode without your fingers having to leave the
    " home row (either use 'jj' or 'jk')
    inoremap jj <Esc>

" }

    " Open new split panes to right and bottom, which feels more natural
    set splitbelow
    set splitright

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

    autocmd Filetype gitcommit setlocal spell "turn on spell ckecking for git commit msgs

" Formatting {

    " set nowrap                      " Wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent

    "don't treat - as a word separator
    "especially handy when working html classes and ids
    set iskeyword+=-
    " set lisp
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

    " Set syntax highlighting for specific file types
    autocmd BufRead,BufNewFile *.md set filetype=markdown

    " Enable spellchecking for Markdown
    autocmd BufRead,BufNewFile *.md setlocal spell

    " Automatically wrap at 80 characters for Markdown
    autocmd BufRead,BufNewFile *.md setlocal textwidth=80

    " Display extra whitespace
    set list listchars=tab:»·,trail:·

