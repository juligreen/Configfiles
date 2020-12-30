" vim-plug	{{{
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree' " Navigate undos
Plug 'tpope/vim-surround' " change/append sourroundings of sommething - cs'} = change sourrounding single quotes with wavy brackets
Plug 'tpope/vim-repeat' " make surround actions repeatable
Plug 'tpope/vim-fugitive' " :Gstatus to open a new pane to stage, diff and commit. This is really awesome!
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-obsession' " make sessions smarter => auto save session when closing. Quick info about sessions: https://hackernoon.com/sessions-the-vim-feature-no-one-talks-about-1c9cfa4d52d7
Plug 'tpope/vim-sleuth' " Autodetect indentation rules
Plug 'tpope/vim-unimpaired' " quick actions with ]q goes to next entry in quickfix
Plug 'tpope/vim-commentary' " Comment stuff
Plug 'tpope/vim-abolish' " just read the documentation, it's complicated
Plug 'christoomey/vim-system-copy' " cpit > this copies the content of a tag into your clipboard
Plug 'vim-airline/vim-airline' " shows buffers for files
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace' " better whitespace cleaning
Plug 'nelstrom/vim-visual-star-search' " use * to jump to next instace of current word
Plug 'haya14busa/vim-asterisk' " * for visual mode, z* higlights words, but does not jump
Plug 'psliwka/vim-smoothie' " smooth scrolling
Plug 'norcalli/nvim-colorizer.lua' " Colorize colors inline
Plug 'rhysd/git-messenger.vim' " <leader>gm show last git commit for current line (similar to gitlens)
Plug 'airblade/vim-gitgutter' " show diff in the sign column. Also use <leader>gn to go to next git hunk
Plug 'konfekt/fastfold' " faster folds
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua' " :LuaTreeToggle to open file explorer (then press ? to look at options)
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } " THE best fuzzy finder. fuzzy find anything from files to buffers or commands.
Plug 'jremmen/vim-ripgrep' " :Rg to use ripgrep and open results in quickfix buffer (:cw to open manually)
Plug 'mattn/emmet-vim' " enable emmet expressions: tagname -> press <C-y>, -> <tagname></tagname>
Plug 'jonsmithers/vim-html-template-literals' " lit-html, support for polymer files
Plug 'andymass/vim-matchup' " improve % and add text objects i% and a%
Plug 'chaoren/vim-wordmotion' " camelcasemotion
Plug 'crusoexia/vim-monokai' " Colorscheme
Plug 'ku-s-h/summerfruit256.vim'
Plug 'kana/vim-textobj-user' " Add new textobjects easily
Plug 'kana/vim-textobj-entire' " textobj: ae entire buffer, ie buffer without leading and trailing empty lines
Plug 'wellle/targets.vim' " more text objects, enables stuff like ci, or ci/
Plug 'jeetsukumaran/vim-pythonsense' " Add python text objects: ac (around class), ic, af, if (inner function)
Plug 'Vimjas/vim-python-pep8-indent' " Manges python indentation
Plug 'dag/vim-fish' " fish support
Plug 'paroxayte/vwm.vim' " Manage Window layouts
Plug 'cespare/vim-toml' " toml support
Plug 'stephpy/vim-yaml' " yaml support
Plug 'pechorin/any-jump.nvim' " Use regex to 'go to definition' anywhere (<leader>j)
Plug 'hashivim/vim-terraform' "terraform syntax highlighting
Plug 'rbgrouleff/bclose.vim' " Dependency of ranger.vim
Plug 'francoiscabrol/ranger.vim' " Use ranger inside of vim
Plug 'unblevable/quick-scope' " Improve f key
Plug 'Chiel92/vim-autoformat' " Add formatting Action
Plug 'machakann/vim-highlightedyank' " highlight yanked text
Plug 'junegunn/vim-peekaboo' " preview registers
Plug 'christianrondeau/vim-base64' " Encodes/decodes base64 strings
Plug 'liuchengxu/vista.vim'
Plug 'aklt/plantuml-syntax'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'pearofducks/ansible-vim'
Plug 'tyru/eskk.vim' " Japanese support
Plug 'tyru/skkdict.vim'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine. This does loads of stuff, but is a language server client foremost. I will replace it for the native nvim language server, since coc.nvim has a node dependency
" Stuff to check out {{{
" ReplaceWithRegister - make replacing repeatable
" Sortmotion sort stuff alphabetically
" twig highlight - syntax highlighting
" sideways.vim
" Plug 'idanarye/vim-merginal': use fugitive for branches
" vigoux/completion-treesitter
" haorenW1025/completion-nvim - use native neovim language server
" rbong/vim-flog more fugitive branches
" }}}
call plug#end()
" }}}
" UI {{{
set number relativenumber " show hybrid line numbers
set cursorline		" highlight current line
set showmatch		" highlight matching [{()}]
set incsearch		" search as characters are entered
set icm=split       " preview substitutions in split
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" allows cursor change in tmux mode
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
" else
"     let &t_SI = "\e[5 q"
"     let &t_EI = "\e[2 q"
" endif
" }}}
" Misc {{{
filetype plugin indent on
set mouse=a
set shell=bash
set title " vim controls the title of the terminal
set splitbelow
set splitright
set expandtab
set tabstop=4		" number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4	" number of spaces in tab when editing
" Map the leader key to SPACE
let mapleader="\<SPACE>"

au BufNewFile,BufRead *.py set foldmethod=indent
au BufRead,BufNewFile playbook*.yml set filetype=yaml.ansible


" don't fuck with pasting
set pastetoggle=<C-A-v>
let g:wordmotion_prefix = '\'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:html_indent_style1 = 'inc'
set virtualedit=block

vnoremap <C-b> :<c-u>call codepainter#paintText(visualmode())<cr>
nnoremap <C-b> :<c-u>call codepainter#paintText('')<cr>

set scrollback=100000
" }}}
" Colortheme {{{
syntax on
colorscheme monokai
" colorscheme summerfruit256
" let g:airline_theme='ayu_light'
set termguicolors
" }}}
" Plugin Configuration {{{
" ALE {{{
nmap <leader>i :ALEFix<CR>
let g:airline#extensions#ale#enabled = 1
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black'],
\   'java': ['google_java_format']
\}
" }}}
" LeaderF{{{
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 1
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ShowHidden = 0
let g:Lf_RecursSubmodules = 1

let g:LfDiscardEmptyBuffer = 1

" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': '\ue0b0', 'right': '\ue0b2', 'font': 'DejaVu Sans Mono for Powerline' }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
" }}}
" Ranger {{{
let g:ranger_map_keys = 0
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1
" }}}
" quick-scope{{{
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" }}}
" Autoformat {{{
let g:formatters_python = ['black']
noremap <C-q> :Autoformat<CR>


" }}}
" vim-asterisk {{{
map *	<Plug>(asterisk-*)
map #	<Plug>(asterisk-#)
map g*	<Plug>(asterisk-g*)
map g#	<Plug>(asterisk-g#)
map z*	<Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#	<Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
" }}}
" SKK {{{
let g:eskk#large_dictionary = {
\   'path': '/usr/share/skk/SKK-JISYO.L',
\   'sorted': 1,
\   'encoding': 'euc-jp',
\ }

imap <C-k> <Plug>(eskk:toggle)
cmap <C-k> <Plug>(eskk:toggle)
lmap <C-k> <Plug>(eskk:toggle)
" }}}
" Vista {{{
let g:vista_default_executive = 'coc'
" }}}
" }}}
" Undo and backup Settings {{{
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

set backup
set backupdir=~/.vim/backupdir//
set directory=~/.vim/swapdir//
" }}}
" Search {{{
set ignorecase		" Make searching case insensitive
set smartcase		" ... unless the query has capital letters.
set hlsearch		" highlight matches
set path +=**
set wildmenu
" }}}
" Syntax Checking {{{
" json syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+
" }}}
" Folding {{{
set foldenable		" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10	" 10 nested fold max
set foldmethod=indent	" fold based on specified expression
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType python setlocal foldmethod=indent
set foldlevel=0
set modelines=1
" }}}
" Autocompletion {{{
" }}}
" Mappings {{{
" split navigations {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}
" buffer navigation
nnoremap <A-l> :bnext<CR>
nnoremap <A-h> :bprevious<CR>
" toggle undotree
nnoremap <leader>u :UndotreeToggle<CR>
" Use Q to execute default register.
nnoremap Q @q
" nvim-tree
" nnoremap <leader>d :LuaTreeToggle<CR>
" nnoremap <leader>r :LuaTreeFindFile<cr>
" Ranger
nnoremap <leader>d :RangerWorkingDirectory<CR>
nnoremap <leader>r :RangerCurrentFile<cr>


let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fc :<C-U><C-R>=printf("Leaderf command %s", "")<CR><CR>
noremap <leader>fg :<C-U><C-R>=printf("Leaderf rg %s", "")<CR><CR>
nnoremap <leader>6 :b term<cr>


" Use Ctrl D to delete the next char
imap <C-d> <Del>
" Dedent with C-M-d instead
inoremap <C-M-d> <C-d>

" Break undo chain on backspace and now lines
inoremap <C-H> <C-G>u<BS>
inoremap <BS> <C-G>u<BS>
inoremap <CR> <C-]><C-G>u<CR>

nnoremap <Leader>w :w<cr>

" Disable Scrolling{{{
:nmap <ScrollWheelUp> <nop>
:nmap <S-ScrollWheelUp> <nop>
:nmap <C-ScrollWheelUp> <nop>
:nmap <ScrollWheelDown> <nop>
:nmap <S-ScrollWheelDown> <nop>
:nmap <C-ScrollWheelDown> <nop>
:nmap <ScrollWheelLeft> <nop>
:nmap <S-ScrollWheelLeft> <nop>
:nmap <C-ScrollWheelLeft> <nop>
:nmap <ScrollWheelRight> <nop>
:nmap <S-ScrollWheelRight> <nop>
:nmap <C-ScrollWheelRight> <nop>

:imap <ScrollWheelUp> <nop>
:imap <S-ScrollWheelUp> <nop>
:imap <C-ScrollWheelUp> <nop>
:imap <ScrollWheelDown> <nop>
:imap <S-ScrollWheelDown> <nop>
:imap <C-ScrollWheelDown> <nop>
:imap <ScrollWheelLeft> <nop>
:imap <S-ScrollWheelLeft> <nop>
:imap <C-ScrollWheelLeft> <nop>
:imap <ScrollWheelRight> <nop>
:imap <S-ScrollWheelRight> <nop>
:imap <C-ScrollWheelRight> <nop>
" }}}
" }}}
" Git {{{
" GitGutter{{{
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg
" Update sign column every quarter second
set updatetime=250
" }}}
highlight GitGutterAdd	  guifg=#009900 guibg=<X> ctermfg=2
highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3
highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>(GitGutterStageHunk)	" git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)	" git undo (chunk)

" Open Git status pane
nnoremap <leader>gs :LazyGit<CR>
" nnoremap <leader>gs :Gstatus<CR>
" Push to remote
nnoremap <leader>gP :Gpush<CR>
" }}}
" commands {{{
command! Install :w | :source % | :PlugInstall
" }}}
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
" Scrolling {{{
if !&scrolloff
	set scrolloff=5 " Show next 5 lines while scrolling.
	endif
	if !&sidescrolloff
	set sidescrolloff=5 " Show next 5 columns while side-scrolling.
	endif
" }}}
" coc.nvim {{{
let g:coc_global_extensions = [
		\'coc-prettier',
		\'coc-python',
		\'coc-go',
		\'coc-sh',
		\'coc-json',
		\'coc-css',
		\'coc-html',
		\'coc-eslint',
		\'coc-tsserver',
		\'coc-yaml',
		\]
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has('patch-8.1.1564')
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	"" autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
vmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)


" Add status line support, for integration with other plugin, checkout `:h coc-status`
let g:airline#extensions#coc#enabled = 1
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" }}}
" vim:foldmethod=marker:foldlevel=0
