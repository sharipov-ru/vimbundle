" Important environment settings
set nocompatible                               " be iMproved
set shell=zsh
set encoding=utf-8
set clipboard=unnamed
set t_Co=256                                   " 256 colors support
set ttyfast
set lazyredraw
set nobackup
set noswapfile
set pastetoggle=<F3>
set showmode
set timeoutlen=2000
set ttimeoutlen=0

" Editor configuration
set number                                     " show line numbers
set cc=100                                      " show 80-digit limit line
set expandtab                                  " use spaces instead of tabs
set bs=2
set softtabstop=2                              " 1 soft tab == 2 spaces
set tabstop=2                                  " 1 hard tab == 2 spaces
set shiftwidth=2                               " > and < commands shifts by 2
set ai                                         " auto indent
set hlsearch                                   " highlight search results
set so=999
set nofoldenable                               " turn off folding
set nowrap                                     " turn off line wrapping
set laststatus=2                               " always show status line
set autoread
set splitbelow                                 " move focus to new split below
set splitright                                 " move focus to new split at right
set shell=bash\ -i

" set spell
" setlocal spell spelllang=ru_yo,en_us
" setlocal spell spelllang=ru_ru_yo,en_us

" Set ruby format for rabl files
au BufRead,BufNewFile *.rabl setf ruby

" autocmd FileType ruby setlocal path+=

filetype off                                   " required!
call plug#begin('~/.vim/plugged')

" Utils
" Plug 'genutils'
" Plug 'L9'

" Syntax checker
" Plug 'w0rp/ale'

" Awesome fuzzy file/buffer/tag finder
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" Automatically add 'end' in ruby code
Plug 'tpope/vim-endwise'

" Surround brackets, quotes and so on...
Plug 'tpope/vim-surround'

" Extended repeat (.) command
Plug 'tpope/vim-repeat'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Move lines
Plug 'matze/vim-move'

" Easy line alignment
Plug 'junegunn/vim-easy-align'

" Airline status bar
Plug 'bling/vim-airline'

Plug 'tpope/vim-vinegar'

" Native increment for dates and times
Plug 'tpope/vim-speeddating'

" Easy lines commenting
Plug 'vim-scripts/tComment'

" Autocompletion
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" Sidebar with tree explorer
Plug 'scrooloose/nerdtree'

" Tag bar with class/instance methods
Plug 'majutsushi/tagbar'

" Swap arguments
Plug 'PeterRincker/vim-argumentative'

" one-liner / multi-line switcher
Plug 'AndrewRadev/splitjoin.vim'

" Evernote
Plug 'https://github.com/neilagabriel/vim-geeknote'

" Reveal in Finder
Plug 'henrik/vim-reveal-in-finder'

" YouCompleteMe
" Plug 'Valloric/YouCompleteMe'

" Set path from ruby's `$LOAD_PATH` and add .rb suffix
Plug 'vim-ruby/vim-ruby'

" Set path to include gems specified in Gemfile
Plug 'tpope/vim-bundler'

" Auto :set paste
Plug 'ConradIrwin/vim-bracketed-paste'

" Set path to include lib/
Plug 'tpope/vim-rake'
" Plug 'tpope/vim-rails'
Plug 'henrik/vim-ruby-runner'
Plug 'tpope/vim-rbenv'
Plug 'thoughtbot/vim-rspec'

" Git tools
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv'
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'
Plug 'idanarye/vim-merginal'

" frontend tools support
Plug 'kchmck/vim-coffee-script'
Plug 'itspriddle/vim-jquery'
Plug 'groenewege/vim-less'
Plug 'firegoby/SASS-Snippets'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-jade'
Plug 'Shutnik/jshint2.vim'

" markdown support
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'nelstrom/vim-textobj-rubyblock'

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'zeis/vim-kolor'
Plug 'tomasr/molokai'
Plug 'duythinht/inori'
Plug 'wellsjo/wells-colorscheme.vim'
Plug 'cdmedia/itg_flat_vim'
Plug 'benjaminwhite/Benokai'
Plug 'duythinht/vim-coffee'
Plug 'sickill/vim-monokai'

" Emoji
Plug 'junegunn/vim-emoji'

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'

" Docker
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

syntax on
colorscheme kolor
filetype indent on
filetype plugin on

runtime macros/matchit.vim                 " Matchit (required by vim-textobj-rubyblock)

" Custom general mappings
map 0 ^
map 1 $
imap <F1> <Esc> :tabprev <CR>i
map <F1> :tabprev <CR>
imap <F2> <Esc> :tabnext <CR>i
map <F2> :tabnext <CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <S-H> gT
nnoremap <S-L> gt
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F3> :set invpaste paste?<CR>

" Custom plugin mappings
let g:move_key_modifier = 'S'              " Move_key_modifier
nnoremap <silent> <F9> :TagbarToggle<CR>   " Toggle Tagbar
nnoremap <silent> <F5> :BookmarkToRoot          " NERDTree: add new bookmark
nnoremap <silent> <F6> :NERDTreeFind<CR>        " NERDTree: open current file in tree
nnoremap <silent> <F7> :NERDTreeToggle<CR>      " NERDTree: toogle tree
nnoremap <silent> <F10> :EvervimNotebookList<CR>" Evernote: show notebooks
nnoremap <C-p> :Files<CR>
nnoremap <Leader>a :Ag 
nnoremap <Leader>t :Ag<CR>
nnoremap <Leader>b :Buffers<CR>
" nnoremap <leader>f :CtrlPTag<CR>                " Toggle ctrlp
" nnoremap <leader>f :CtrlPTag<CR>                " Toggle ctrlp

" Puts caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

" Change quotes type
nnoremap <silent>'  :<C-U>call <SID>ToggleQuote()<CR>

" Change old-style ruby hash to 1.9-style
map <Leader>h :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc

" vim repeat command by .
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" vim-changed configuration
sign define SIGN_CHANGED_DELETED_VIM text=D texthl=ChangedDefaultHl
sign define SIGN_CHANGED_ADDED_VIM   text=A texthl=ChangedDefaultHl
sign define SIGN_CHANGED_VIM         text=M texthl=ChangedDefaultHl

" NERDTree configuration
let NERDTreeWinSize=30
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

" ale configuration:
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Ruby runner configuration:
let g:RubyRunner_open_below = 1
let g:RubyRunner_window_size = 10

" vim-airline configuration:
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#bufferline#enabled = 1

" Gitv configuration
let g:Gitv_OpenHorizontal = 1

" Geeknote
let g:GeeknoteExplorerWidth=50

function! s:BufSyntax()
  if (!exists("g:rails_syntax") || g:rails_syntax)
    if &syntax == 'ruby'
      syn keyword rubyRailsInclude require_dependency gem
    endif
  endif
endfunction

" change quote types
function! s:ToggleQuote()
  let q = searchpos("'", 'n', line('.'))
  let qb = searchpos("'", 'bn', line('.'))
  let dq = searchpos('"', 'n', line('.'))
  let dqb = searchpos('"', 'bn', line('.'))

  if q[0] > 0 && qb[0] > 0 && (dq[0] == 0 || dq[0] > q[0])
    execute "normal mzcs'\"`z"
  elseif dq[0] > 0 && dqb[0] > 0
    execute "normal mzcs\"'`z"
  endif
endfunction

" Pretty format XML
function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction

command! FR set filetype=ruby
command! PrettyXML call DoPrettyXML()
command! PrettyJSON %!python -m json.tool

" Disable folds in markdown files
let g:vim_markdown_folding_disabled=1

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

ab bb require 'byebug'; byebug

" RSpec.vim mappings
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
nnoremap <C-\>> :cnext<CR>
nnoremap <C-\<> :cprev<CR>
