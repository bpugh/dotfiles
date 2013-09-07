"   This is the personal .vimrc file of Brandon Pugh.

" Editor display {
    set guioptions-=T  "remove toolbar
    "Show lines numbers  

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

    " Display extra whitespace
    set list listchars=tab:»·,trail:·
" }

