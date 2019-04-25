" vim-plug  {{{
call plug#begin('~/.vim/plugged')
Plug 'Chiel92/vim-autoformat'
Plug 'sjl/gundo.vim'
Plug 'junegunn/fzf'
Plug 'rust-lang/rust.vim'
Plug 'matcatc/vim-asciidoc-folding'
Plug 'tpope/vim-surround' " change/append sourroundings of sommething - cs'} = change sourrounding single quotes with wavy brackets
Plug 'tpope/vim-commentary' " comment/uncomment lines
Plug 'christoomey/vim-system-copy' " cpit > this copies the content of a tag into your clipboard
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim' " Search through files
Plug 'vim-airline/vim-airline' " shows buffers for files
Plug 'ntpeters/vim-better-whitespace' " better whitespace cleaning
Plug 'nelstrom/vim-visual-star-search' " use * to jump to next instace of current word
Plug 'tpope/vim-eunuch' " https://github.com/tpope/vim-eunuch
Plug 'francoiscabrol/ranger.vim'
Plug 'stephpy/vim-yaml'
Plug 'mrk21/yaml-vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Stuff to check out {{{
" ReplaceWithRegister - make replacing repeatable
" Titlecase - change casing of a line/ a word
" Sortmotion sort stuff alphabetically
" Textobjects - https://github.com/kana/vim-textobj-user/wiki
" twig highlight - syntax highlighting
" Color preview
" sideways.vim
" }}}
call plug#end()
" }}}
" Misc {{{
filetype plugin indent on
set shell=bash
syntax enable
colorscheme darcula
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
let g:deoplete#enable_at_startup = 1
" }}}
" NetRW{{{
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" }}}
" Search {{{
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set hlsearch            " highlight matches
set path +=**
set wildmenu
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" }}}
" UI {{{
set number relativenumber " show hybrid line numbers
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" Formatting {{{
" Rust {{{
let g:rustfmt_autosave = 1 " format rust on saving a buffer
" }}}
" HTML (depends on tidy){{{
autocmd FileType html
\ setlocal formatprg=tidy\ -indent\ -quiet\ --show-errors\ 0\ --tidy-mark\ no\ --show-body-only\ auto
" }}}
" }}}
" Syntax Checking {{{
" json syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" }}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" comma open/closes folds
nnoremap , za
set foldmethod=expr   " fold based on specified expression
set foldmethod=marker
set foldlevel=0
set modelines=1
" }}}
" Autocompletion {{{
" }}}
" Mappings {{{
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" Map the leader key to SPACE
let mapleader="\<SPACE>"
" Use Q to execute default register.
nnoremap Q @q
" Ranger
nnoremap <leader>f :RangerNewTab<CR>
" Snippets {{{
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" }}}
"}}}
" Scrolling {{{
if !&scrolloff
        set scrolloff=3       " Show next 3 lines while scrolling.
    endif
    if !&sidescrolloff
        set sidescrolloff=5   " Show next 5 columns while side-scrolling.
    endif
" }}}
" Snippets {{{
" }}}
" Most stuff from here: https://dougblack.io/words/a-good-vimrc.html
" vim:foldmethod=marker:foldlevel=0
