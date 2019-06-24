call plug#begin('~/.local/share/nvim/plugged')

"Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" LanguageClient-neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" install deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Git integrations for vim
Plug 'tpope/vim-fugitive'

" solarized theme
Plug 'lifepillar/vim-solarized8'

" Airline for statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP for fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" For cpp syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" To show vertical indentation
" Plug 'Yggdroot/indentLine'

" Flake8 integration
Plug 'nvie/vim-flake8'

" Rust syntax detector
Plug 'rust-lang/rust.vim'


Plug 'mhinz/vim-grepper'

" Git integrations for vim
Plug 'tpope/vim-fugitive'

" for the one theme
Plug 'rakr/vim-one'

" go for vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Ctags plugin
"Plug 'universal-ctags/ctags'

" Initialize plugin system
call plug#end()
