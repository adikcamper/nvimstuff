syntax on
filetype on
"set paste
"set ls=2
"set statusline+=%F
"set ru
"set showcmd
"set incsearch
set nobackup
set nowritebackup
set noswapfile
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
set expandtab
set tabstop=2
set shiftwidth=2
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set norelativenumber | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set relativenumber | endif
augroup END

map <F2> :call Help()<CR>
map <F3> :call WhiteChars()<CR>
map <F4> :s/\s\+$//
map <F5> :call Numbers()<CR>
map <F6> :s/^/#
map <F7> :s/^[\ \t]*\n//
map <F9> :tabprevious<CR>
map <F10> :tabnext<CR>

func! Help()
  echo "### version 20120330 ###"
  echo "F2 - Help - what you see now"
  echo "F3 - Show hidden characters"
  echo "F4 - Remove hidden characters at EOL (First, select a few lines)"
  echo "F5 - line numbers"
  echo "F6 - Comment with # (First, select a few lines)"
  echo "F7 - Remove empty lines"
  echo "F9 - Previous tab"
  echo "F10 - Next tab"
endfunc

func! WhiteChars()
  if &list
    set nolist
  else
    set list
  endif
endfunc

func! Numbers()
  set number!
endfunc

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:python3_host_prog = expand('/home/adrian.szulc/.local/python3.11/bin/python3.11')
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='understated'
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-pyright', 'coc-yaml', 'coc-java']
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:coc_filetype_map = {'yaml.ansible': 'ansible'}
set ft=yaml.ansible
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



call plug#begin('~/.local/share/nvim/plugged')

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'rust-lang/rust.vim'
  Plug 'mtdl9/vim-log-highlighting'
  Plug 'gabrielelana/vim-markdown'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'pangloss/vim-javascript'
  Plug 'crusoexia/vim-javascript-lib'
  Plug 'crazy-canux/nagios.vim'
  Plug 'preservim/nerdcommenter'

call plug#end()
