" Editor configurations
set cursorline
set cc=80
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=a
set autoindent
set foldmethod=manual
set foldlevelstart=99
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
    Plug 'EdenEast/nightfox.nvim'

    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    
    " For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    
    " For luasnip users.
    " Plug 'L3MON4D3/LuaSnip'
    " Plug 'saadparwaiz1/cmp_luasnip'
    
    " For mini.snippets users.
    " Plug 'echasnovski/mini.snippets'
    " Plug 'abeldekat/cmp-mini-snippets'
    
    " For ultisnips users.
    " Plug 'SirVer/ultisnips'
    " Plug 'quangnguyen30192/cmp-nvim-ultisnipsr'
    
    " For snippy users.
    " Plug 'dcampos/nvim-snippy'
    " Plug 'dcampos/cmp-snippy'

call plug#end()

" Post configuration
" Source files
source $HOME/.config/nvim/ncmp.vim
source $HOME/.config/nvim/tree.vim
source $HOME/.config/nvim/tags.vim

filetype plugin on
filetype indent plugin on

" End of Tagbar configurations

" Theme, for convenience the entire list of available themes (including
" downloaded ones):

" blue
" carbonfox
" darkblue
" dawnfox
" dayfox
" delek
" desert
" duskfox
" elflord
" evening
" industry 
" koehler  
" morning  
" murphy
" nightfox
" nordfox
" pablo    
" peachpuff
" ron      
" shine    
" slate 
" sorbet
" terafox
" torte
" vim
" wildcharm
" zaibatsu
" zellner 

colorscheme carbonfox
