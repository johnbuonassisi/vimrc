syntax enable

let g:solarized_termcolors=256
colorscheme solarized
set background=dark

filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
call plug#end()

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 0
let g:go_addtags_transform = "camelcase"

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>

" Automatically close vim if NERDTree is last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
