" Editor configurations
set cursorline
set cc=80
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=
set autoindent
set cinoptions+=l1  " align with case label
set cinoptions+=:0  " align case with switch

" Seach
set hlsearch
set showmatch

" Plugins
call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'majutsushi/tagbar'

call plug#end()

" Post configuration
filetype plugin on
filetype indent plugin on

" NERDTree configurations
" NERDTree shortcuts
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" NERDTree behavior
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" End of NERDTree configurations

" Tagbar configurations
nmap <C-t> :TagbarToggle<CR>

" End of Tagbar configurations
