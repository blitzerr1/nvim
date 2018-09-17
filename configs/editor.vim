set background=dark
colorscheme solarized8

" syntax enable

" fix indentation
nnoremap <leader>i mzgg=G`z<CR>

" spaces and tabs
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

" enable mouse support
set mouse=a

set pastetoggle=<F2>

" Replace esc with jj
imap jj <Esc>

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
let &colorcolumn="79,".join(range(101,999),",")
" }}} UI Config

" Folding {{{
set foldenable
set foldlevelstart=10  " default folding level when buffer is opened
set foldnestmax=10     " maximum nested fold
set foldmethod=syntax  " fold based on indentation
" }}} Folding

" edit and source neo-vimrc
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" Cpp Enhanced Highlighting {{{
let g:cpp_class_scope_highlight = 1
" }}}


" fast header source switch
" map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Leader & Mappings {{{
" use comma as leader
let mapleader=","

" trailing whitespace
match ErrorMsg '\s\+$'

" open a new buffer below
set splitbelow

" open a new buffer to the right
set splitright

" Spell check
set spell spelllang=en_us

" wrap the cursor to the next/previous lines on pressing arrow keys
set whichwrap+=<,>,h,l,[,]

" netrw, the vim native file browser

" The style of information on the browser
let g:netrw_liststyle = 3

" remove the banner at the top
let g:netrw_banner = 0

" How files are open when pressed enter - in a previous window
let g:netrw_browse_split = 4

" Make the file browser only cover 25% of the screen.
let g:netrw_winsize = 20

" Vim code folding
" fold everything with zM and unfold everything with zR. zm and zr can be used
" to get those folds just right. Always remember the almighty help file at
" “help :folding” if you get stuck
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
