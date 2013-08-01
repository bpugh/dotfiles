"   This is the personal .vimrc file of Brandon Pugh.
"Shortcut for editing  vimrc file in a new tab  
nmap <leader>ev :tabedit $MYVIMRC<cr> 

" Editor display {
    set guioptions-=T  "remove toolbar
    "Show lines numbers  
    set number

    set backspace=indent,eol,start  " allow backspacing over everything in insert mode
    "Enable code folding  
    set foldenable

    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing

    colorscheme solarized
    set gfn=Consolas:h11:cANSI

    set tabpagemax=15               " Only show 15 tabs
    set showmode                    " Display the current mode

    syntax enable
    set background=dark
" }

