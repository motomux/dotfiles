""" .vimrc

" syntax
syntax on

" encoding
set encoding=utf8
set fileencoding=utf8

" allow to open new buffer without saving current buffer
set hidden

" Swap file
set noswapfile

" Backup file
set nowritebackup
set nobackup

" Show Line numbers
set number

" Show tab and trailing spaces
set list
set listchars=tab:>-,trail:·

" Highlight cursor line
set cursorline

" Show matching branckets
set showmatch

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Scroll
set scrolloff=8

" Indent
set shiftround
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cindent

" FINDING FILES:

" Search down into subfolders
set path+=**

" Autocomplete
set wildmenu
set wildmode=full

" Clipboard
set clipboard+=unnamed

" Command
set showcmd

" History
set history=1000

" FILE BROWSING:
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1

" File type
filetype plugin on

" Json
autocmd Filetype json setl conceallevel=0

" Key binding
let mapleader=" "

noremap! <C-j> <Esc>
noremap <C-j> <Esc>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>

nnoremap <silent> <Left> :tabp<CR>
nnoremap <silent> <Right> :tabn<CR>

cnoremap <C-a> <C-b>
cnoremap <C-u> <C-e><C-u>

nnoremap ZQ <Nop>
nnoremap Q <Nop>

"" Delete search highlight
nmap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

nnoremap <leader>o :tabnew<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" Plug 'Shougo/neocomplete'
Plug 'jiangmiao/auto-pairs'
Plug 'wakatime/vim-wakatime'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0rp/ale'
Plug 'maralla/completor.vim'

call plug#end()

" "Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" 
" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
    " \ 'default' : '',
    " \ 'vimshell' : $HOME.'/.vimshell_hist',
    " \ 'scheme' : $HOME.'/.gosh_completions'
        " \ }
" 
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
    " let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" " 
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
" 
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
  " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " " For no inserting <CR> key.
  " "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" 
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" 
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
  " let g:neocomplete#sources#omni#input_patterns = {}
" endif
" 
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Color scheme hybrid
set background=dark
colorscheme hybrid
let g:hybrid_reduced_contrast = 1
hi MatchParen ctermfg=darkyellow ctermbg=NONE
hi SpecialKey term=bold ctermfg=darkred

" Golang
" Use real tabs in golang files and hide tab listchars
autocmd FileType go setlocal noexpandtab
autocmd FileType go setlocal list listchars=tab:\ \ 

"" Syntax hightlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_structs = 1
let g:go_auto_type_info = 1
let g:go_info_mode = 'guru'

let g:go_fmt_command = "goimports"
""" let g:go_metalinter_command = "--enable-all --exclude=lll --deadline=20s"
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'varcheck', 'aligncheck', 'ineffassign', 'gosimple', 'staticcheck']
let g:go_metalinter_deadline = '30s'
let g:go_list_type = "quickfix"

au FileType go nmap <leader>r :w<CR><Plug>(go-run)
au FileType go nmap <leader>t :w<CR><Plug>(go-test)
au FileType go nmap <leader>c :w<CR><Plug>(go-coverage)
au FileType go nmap <leader>l :w<CR><Plug>(go-metalinter)
au FileType go nmap <leader>d <Plug>(go-def-vertical)

"" golint
""" set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
""" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" Makefile
autocmd FileType make setlocal noexpandtab

" vim-indent-guides
let indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236

" Ale
set nocompatible
filetype off

let &runtimepath.=',~/.vim/bundle/ale'

filetype plugin on

let g:ale_lint_delay = 2000
