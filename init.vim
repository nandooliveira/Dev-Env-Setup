" First
"  - Install VimPlug
"  - Install ripgrep
"  - install pynvim

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-unimpaired'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'justinmk/vim-dirvish'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'junegunn/vim-easy-align'
Plug 'skywind3000/asyncrun.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'kassio/neoterm'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git
Plug 'tpope/vim-fugitive' " commands: :Gblame
Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit' " commands: :Neogit
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'rhysd/git-messenger.vim' " commands: <leader>gm
Plug 'airblade/vim-gitgutter'

" Autocomplete/Hints
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'deoplete-plugins/deoplete-tag'
Plug 'ajh17/VimCompletesMe'

" Tests/Specs
Plug 'vim-test/vim-test'

" Languages & Frameworks support
Plug 'gabrielelana/vim-markdown'
" Plug 'slashmili/alchemist.vim'
" Plug 'elixir-lang/vim-elixir'
Plug 'chrisbra/csv.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/CSSMinister'
Plug 'mattn/emmet-vim'
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'hashivim/vim-terraform'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua' 

" Text Objects
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Themes
" Plug 'fatih/molokai'
Plug 'marciomazza/vim-brogrammer-theme'

" editorconfig
Plug 'sgur/vim-editorconfig'

" navigation
Plug 'preservim/nerdtree'

" Rubocop
Plug 'ngmy/vim-rubocop'

call plug#end()

syntax enable
set termguicolors

filetype plugin indent on

" Themes & Colors
colorscheme brogrammer

set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

" Keymaps
let mapleader=","
nmap ; :
nmap <silent> <C-e> :e.<CR>
nmap <silent> <Tab> :bnext<CR>
nmap <silent> <S-Tab> :bprevious<CR>
nmap <silent> <S-w> :bd<CR>
nmap <silent> <leader>h :let @/ = ""<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Switch to normal mode from terminal in insert mode
tmap <C-o> <C-\><C-n>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" e"sier access to registers
nnoremap <leader>r "

" easy source config
nmap <leader>src :source ~/.config/nvim/init.vim<CR>

" redo
nnoremap U <C-r>

" START - Options

set mouse=a              " Enable mouse

set clipboard=unnamed   " Allow copy-pasting from other apps

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set rnu                 " Use relative numbers
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set linebreak           " Break long lines on words
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set colorcolumn=121     " Show a line bar after 120 chars.

" Cursor
set cursorline
set cursorcolumn

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
" set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set hidden              " Don't force buffer saving when navigating between them

" Search
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set gdefault    " by default, replace globally (you can ommit /g at the end of a search-and-replace

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=#0d0112
match ExtraWhitespace /\s\+$\|\t/

" Dockerfile filetypes
autocmd BufNewFile,BufRead Dockerfile* set filetype=dockerfile

set foldmethod=indent
set foldlevelstart=20
nnoremap <Leader>zr zR
nnoremap <Leader>zm zM
nnoremap <Leader>zz za

" END - Options

" ==> Custom Commands

command! SetWorkingDirToCurrentFile cd %:p:h

" command! Rubocop call asyncrun#run('',
"   \ {},
"   \ 'docker-compose exec -T web bundle exec rubocop --parallel')
" command! RubocopTerm call asyncrun#run('',
"   \ { 'mode': 'term', 'pos': 'bottom' },
"   \ 'docker-compose exec web bundle exec rubocop --parallel')
" 
" command! RubyLinter call asyncrun#run('',
"   \ {},
"   \ 'docker-compose exec -T web bundle exec standardrb')
" 
" command! RubyLinterFix call asyncrun#run('',
"   \ {},
"   \ 'docker-compose exec -T web bundle exec standardrb --fix')
" 
" nmap <leader>rll :RubyLinter<CR>
" nmap <leader>rlf :RubyLinterFix<CR>

" ==> Relative numbering

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nmap <leader>nt :call NumberToggle()<CR>

" ==> Highlighing search results

" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.1)<CR>
nnoremap <silent> N   N:call HLNext(0.1)<CR>

" just highlight the match in red...
function! HLNext (blinktime)
    highlight WhiteOnRed ctermfg=white ctermbg=red guifg=white guibg=red
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#\%('.@/.'\)'
    let ring = matchadd('WhiteOnRed', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

" => vim-better-whitespace

nnoremap <silent> <F5> :StripWhitespace<CR>

" => Clear Quickfix List

function ClearQuickfixList()
  call setqflist([])
endfunction
command! ClearQuickfixList call ClearQuickfixList()

" ==> Airline

let g:airline_theme = 'molokai'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#obsession#indicator_text = '$'
let g:airline#extensions#gutentags#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '|'

" ==> Emmet

let g:user_emmet_leader_key='<C-e>' " (CTRL + e + ,)
let g:user_emmet_mode = 'a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,eruby,less,haml,eelixir EmmetInstall

" ==> Deoplete

let g:deoplete#enable_at_startup = 1
call g:deoplete#custom#option({
\  'sources': {
\    '_': []
\  }
\ })

call deoplete#custom#var('tabnine', {
\ 'line_limit': 300,
\ 'max_num_results': 8,
\ })

" ==> dirvish

let g:dirvish_mode = ':sort ir /^.*[^\/]$/'

" ==> nerdcommenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" ==> vim-easy-align

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ==> vim-test

let test#strategy = 'neovim'
" let test#ruby#rspec#executable = 'docker-compose exec web bundle exec rspec'
" let test#ruby#rspec#executable = 'docker-compose exec web bin/rspec'
" let test#enabled_runners = ["ruby#minitest", "ruby#rspec"]

" let test#strategy = "vimterminal"
nnoremap ,rs :TestFile<cr>
nnoremap ,rl :TestLast<cr>
nnoremap ,rn :TestNearest<cr>

" ==> Git

nmap <silent> <leader>gg :Git status<CR>
nmap <silent> <leader>gb :Git blame<CR>

" ==> vim-fugitive

" nmap <leader>gs :G<CR>
nmap <leader>gk :Git! diff<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>ga :diffget //2<CR>

" ==> Neogit

nmap <leader>gs :Neogit<CR>

" ==> AsyncRun

let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" ==> UltiSnips

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ==> vim-indent-guides

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2

" ==> CSSMinister

" let g:CSSMinisterCreateMappings = 0
let g:CSSMinisterMapPrefix = "DISABLE"
" nmap <leader>thsl :ToHSL<CR>


" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
" Cmd-Shift-N for nerd tree
nmap <D-N> :NERDTreeToggle<CR>

" Open the project tree and expose current file in the nerdtree with Ctrl-\
" " calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>

" GO
autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
" require('go').setup()

