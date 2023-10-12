syntax enable

" uncomment if solarized to be used
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark

filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
" Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
Plug 'keith/swift.vim'
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'morhetz/gruvbox'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'preservim/tagbar'
Plug 'AoLab/vim-avro'
Plug 'hashivim/vim-terraform'
Plug 'dense-analysis/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplcache'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'jparise/vim-graphql'
call plug#end()

colorscheme gruvbox

" Set the leader button
let mapleader = ','

" Turn lines numbers on always
set relativenumber
set rnu

" Reload vim configuration
nnoremap <leader><leader> :source $MYVIMRC<cr>

"makes the preview automatically close after autocomplete selection
autocmd CompleteDone * pclose

"go configuration
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
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_auto_sameids = 1
let g:go_addtags_transform = "camelcase"
let g:go_rename_command = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_fmt_command = 'goimports'
let g:go_snippet_engine = "neosnippet"
let g:go_test_show_name = 1

"go key mappings
au FileType go nmap <leader>gb :GoBuild<cr>
au FileType go nmap <leader>gt :GoTest<cr>
au FileType go nmap <leader>gtc :GoTestCompile<cr>
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gdp <Plug>(go-def-pop)
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-split)
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au Filetype go nmap <leader>gc <Plug>(go-coverage-toggle)

"4 space tabs for go files
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4


" add indentation lines for code indented with tabs (like Go code)
"set list lcs=tab:\⦙\

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>
" make nerdtree file explorer wider
let g:NERDTreeWinSize=40

" Automatically close vim if NERDTree is last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Below is for yaml editing from https://www.arthurkoziel.com/setting-up-vim-for-yaml/
" 2 space indentation for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" add indention lines
let g:indentLine_char = '⦙'
" start with yaml files fully expanded
set foldlevelstart=20
" yaml linting setuplet g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
" let g:ale_lint_on_text_changed = 'never'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
