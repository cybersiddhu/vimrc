
"===============================================================================
"==========  CUSTOMIZATION (vimrc)  ============================================
"===============================================================================
"
"
""-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

se nu
syntax on                           "syntax highlighing
filetype on                          "try to detect filetypes
filetype plugin indent on    "enable loading indent file for filetype




"" Code folding
set foldmethod=indent
set foldlevel=99

"" tasklist
map <leader>td <Plug>TaskList

"" gundo plugin
map <leader>g :GundoToggle<CR>

let g:pyflakes_use_quickfix = 0  "pyflakes plugin
let g:pep8_map='<leader>8'   "pep8 plugin

"tab completion and documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"nerdtree plugin
map <leader>n :NERDTreeToggle<CR>

"ropevim plugin
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"ack plugin
nmap <leader>a <Esc>:Ack!

"git integration
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"pytest plugin
"Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

"ctrlp plugin
let g:ctrlp_map = '<c-p>'  " Leave this empty to disable the default mapping
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_user_command = 'find %s -type f'

"exclude files or folders
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so

"solarized colorscheme
set background=dark
colorscheme solarized
