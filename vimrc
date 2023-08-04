syntax on
set mouse=a                     "Enable mouse mode


if !has('nvim')
  set ttymouse=xterm2
  set ttyscroll=3
endif

" increase max memory to show syntax highlighting for large files
set maxmempattern=20000

call plug#begin()

Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" ==================== vim-json ====================
let g:vim_json_syntax_conceal = 0