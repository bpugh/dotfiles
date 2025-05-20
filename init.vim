set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

if exists('g:vscode')
    " VSCode extension
nmap <leader>a <Cmd>call VSCodeCall('workbench.action.findInFiles')<CR>
nmap <leader>e <Cmd>call VSCodeCall('workbench.view.explorer')<CR>
nmap gp <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
nmap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>

vnoremap <leader>s <Cmd>call VSCodeCall('editor.action.transformToSnakecase')<CR>
nnoremap <BS> <Cmd>call VSCodeCall('workbench.action.navigateBack')<CR>

else
    " ordinary Neovim
endif

map <silent> <leader>r :source $MYVIMRC<cr>
" let g:camelcasemotion_key = '<leader>'
map <silent> t <Plug>CamelCaseMotion_w
xmap <silent> it <Plug>CamelCaseMotion_iw
omap <silent> it <Plug>CaseMotion_iw
" Plugin management (using vim-plug)
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-commentary'
Plug 'gaving/vim-textobj-argument'
Plug 'bkad/CamelCaseMotion'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()
colorscheme catppuccin-macchiato " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha


