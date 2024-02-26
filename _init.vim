:set number
:set relativenumber
:set tabstop=2
:set shiftwidth=4
:set smarttab
:set softtabstop=2
:set mouse=a
:set autoindent
:set smartindent
:set expandtab
let g:haskell_indent_disable = 1

call plug#begin()

Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/rebelot/kanagawa.nvim'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/mrcjkb/haskell-tools.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/jacoborus/tender.vim'

call plug#end()

:set background=dark
:colorscheme gruvbox 

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <F8> :TagbarToggle<CRi>


" Toggle terminal on/off (neovim)
nnoremap <A-t> :call TermToggle(12)<CR>
inoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>

map tv :lcd %:p:h<CR>:vs<CR><C-w><C-w>:set nonu<CR>:te<CR>i
map th :lcd %:p:h<CR>:sp<CR><C-w><C-w>:set nonu<CR>:te<CR>i

command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap <A-n> :tabn<CR>
nnoremap <A-x> :tabc<CR>
nnoremap <A-t> :tabnew<CR>
nnoremap <A-h> :tabl<CR>
nnoremap <A-l> :tabr<CR>
nnoremap <A-j> :tabp<CR>


tnoremap <leader><ESC> <C-\><C-n>
