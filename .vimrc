"   This is the personal .vimrc file of Brandon Pugh.

" Environment {

    " Basics {
        set nocompatible        " Must be first line
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if has('win32') || has('win64')
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
" }
" Editor display {
    set guioptions-=T  "remove toolbar

    "Show lines numbers  
    set number

    "Enable code folding  
    set foldenable

    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing

         if filereadable(expand("~/.vim/colors/solarized.vim"))
            let g:solarized_termcolors=256
            color solarized                 " Load a colorscheme
        endif
            let g:solarized_termtrans=1
            let g:solarized_contrast="high"
            let g:solarized_visibility="high"
        set tabpagemax=15               " Only show 15 tabs
        set showmode                    " Display the current mode

    set gfn=Consolas:h10:cANSI
    syntax enable
    set background=dark
" }

" key mappings {

    let mapleader = ","

    "Saves time; maps the spacebar to colon  
    nmap <space> :

    nnoremap Y y$
    nnoremap s "0p

    "navigate by row
    nnoremap j gj
    nnoremap k gk

    " navigate tabs like most editors
    " just another reason to love 
    nnoremap <C-S-Tab> :tabprevious<CR>
    nnoremap <C-Tab> :tabnext<CR>

    map <F2> :NERDTreeToggle<CR>

    " Quickly get out of insert mode without your fingers having to leave the
    " home row (either use 'jj' or 'jk')
    inoremap jj <Esc> 

" }

    nnoremap / /\v
    vnoremap / /\v
    set ignorecase
    set smartcase
    set gdefault
    set incsearch
    set showmatch
    set hlsearch
    nnoremap <leader><space> :noh<cr>
    nnoremap <tab> %
    vnoremap <tab> %
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
    set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
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

