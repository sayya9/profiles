source ~/dotfiles/packages.vim

set nocompatible
set hidden
set history=5000
set pastetoggle=<f5>
set incsearch
set mouse=a

" Customize the way that Vim handles tab-completion at the command prompt
set wildmenu
set wildmode=full

" Make backspace work like most other programs: set backspace=indent,eol,start
set backspace=2

" Show whitespace and tab
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Highlight all matches
set hlsearch

" Replace yaml to ansible filetype
autocmd Filetype yaml set filetype=ansible

" For lightline.vim
set laststatus=2

" Highlight the currnet line and column
" See: https://medium.com/usevim/highlight-the-current-line-b6ff8af798c7
hi cursorline cterm=none term=none
set cursorline
highlight CursorLine guibg=#303000 ctermbg=235
highlight CursorColumn guibg=#303000 ctermbg=237

" For NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Mappings
cnoremap <expr> %% getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'
noremap <F3> :set cursorcolumn!<CR>
inoremap <F3> <C-o>:set cursorcolumn!<CR>
cnoremap <F3> <C-c>:set cursorcolumn!<CR>
noremap <F4> :set list!<CR>
inoremap <F4> <C-o>:set list!<CR>
cnoremap <F4> <C-c>:set list!<CR>
noremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
noremap <Leader>n nzz
noremap <Leader>N Nzz
map <C-n> :NERDTreeToggle<CR>
