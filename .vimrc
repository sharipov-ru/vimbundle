let mapletter = "\\"
set bs=2
set encoding=utf-8
set number                                     " show line numbers
set ai
set expandtab                                  " use spaces instead of tabs
set softtabstop=2                              " 1 soft tab == 2 spaces
set tabstop=2                                  " 1 hard tab == 2 spaces
set shiftwidth=2                               " > and < commands shifts by 2
set hlsearch
" set cursorline cursorcolumn                    " highlight the current line and column
" set colorcolumn=80                           " show 80-digit limit line
set ttyfast
set lazyredraw

set so=999
set nocompatible                               " be iMproved
set nofoldenable                               " turn off folding
set nowrap                                     " turn off line wrapping
set laststatus=2                               " always show status line
set clipboard=unnamed
set autoread

syntax on
filetype off                                   " required!
" set spell
" setlocal spell spelllang=ru_yo,en_us
" setlocal spell spelllang=ru_ru_yo,en_us

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set cc=80

" Set ruby format for rabl files
au BufRead,BufNewFile *.rabl setf ruby

" Open NERDTree when no file was specified
" autocmd vimenter * if !argc() | NERDTree | endif

" Compile coffee files
" au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" Plugin manager itself:
Bundle 'gmarik/vundle'

" Utils
Bundle 'genutils'
Bundle 'L9'

" Syntax checker
Bundle 'scrooloose/syntastic'

" ack search wrapper
Bundle 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

" Awesome fuzzy file/buffer/tag finder
Bundle 'kien/ctrlp.vim'

" Automatically add 'end' in ruby code
Bundle 'tpope/vim-endwise'

" Surround brackets, quotes and so on...
Bundle 'tpope/vim-surround'

" Extended repeat (.) command
Bundle 'tpope/vim-repeat'

" Multiple cursors
Bundle 'terryma/vim-multiple-cursors'

" Move lines
Bundle 'matze/vim-move'

" Easy line alignment
Bundle 'junegunn/vim-easy-align'

" Airline status bar
Bundle 'bling/vim-airline'

Bundle 'tpope/vim-vinegar'

" Native increment for dates and times
Bundle 'tpope/vim-speeddating'

" Easy lines commenting
Bundle 'vim-scripts/tComment'

" Autocompletion
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Pairs of handy bracket mappings
Bundle 'tpope/vim-unimpaired'

" Sidebar with tree explorer
Bundle 'scrooloose/nerdtree'

" Tag bar with class/instance methods
Bundle 'majutsushi/tagbar'

" Ruby/Rails/RSpec support
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'henrik/vim-ruby-runner'
Bundle 'skwp/vim-rspec'
Bundle 'tpope/vim-rbenv'

" Git tools
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/Git-Branch-Info'
Bundle 'kablamo/vim-git-log'
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'
Bundle 'mhinz/vim-signify'

" jQuery/Coffescript/LESS/SASS/SLIM/Zencoding support
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'groenewege/vim-less'
Bundle 'firegoby/SASS-Snippets'
Bundle 'mattn/zencoding-vim'
Bundle 'slim-template/vim-slim'
Bundle 'digitaltoad/vim-jade'

" markdown support
Bundle 'plasticboy/vim-markdown'
Bundle 'nelstrom/vim-markdown-preview'

" Text objects
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
Bundle 'nelstrom/vim-textobj-rubyblock'

" Colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'zeis/vim-kolor'
Bundle 'tomasr/molokai'

" Emoji
Bundle 'junegunn/vim-emoji'

" 256 colors support
set t_Co=256
colorscheme kolor

filetype on
filetype indent on
filetype plugin on

" Custom general mappings
map 0 ^

" Xuinya
" nnoremap <esc> :noh<return><esc>

nmap <F1> <Esc>                          " No help
imap <F1> <Esc> :tabprev <CR>i
map <F1> :tabprev <CR>
imap <F2> <Esc> :tabnext <CR>i
map <F2> :tabnext <CR>
" map <C-J> :bnext<CR>                     " Next buffer
" map <C-K> :bprev<CR>                     " Previous buffer
nnoremap <C-L> gt
nnoremap <C-H> gT

let g:move_key_modifier = 'C'
map <Leader>] :so $MYVIMRC<CR>

" paste mode
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" Custom plugin mappings
nnoremap <silent> <F9> :TagbarToggle<CR>   " Toggle Tagbar
map <leader>a :Ack
map <silent> <F5> :BookmarkToRoot          " NERDTree: add new bookmark
map <silent> <F6> :NERDTreeFind<CR>        " NERDTree: open current file in tree
map <silent> <F7> :NERDTreeToggle<CR>      " NERDTree: toogle tree
map <silent> <F10> :EvervimNotebookList<CR>" Evernote: show notebooks
map <Leader>m :Emodel
map <Leader>c :Econtroller
map <Leader>v :Eview
map <Leader>r :CoffeeRun<CR>               " Execute coffescript
map <leader>f :CtrlPTag<CR>                " Toggle ctrlp

" Change quotes type
nnoremap <silent>'  :<C-U>call <SID>ToggleQuote()<CR>

" Change old-style ruby hash to 1.9-style
map <Leader>h :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc

" vim repeat command by .
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" map <silent> <F8> :Gitv<CR>
" map <silent> <F6> :call GITLOG_ToggleWindows()

" Changed configuration
sign define SIGN_CHANGED_DELETED_VIM text=D texthl=ChangedDefaultHl
sign define SIGN_CHANGED_ADDED_VIM   text=A texthl=ChangedDefaultHl
sign define SIGN_CHANGED_VIM         text=M texthl=ChangedDefaultHl

" NERDTree configuration
let NERDTreeWinSize=30
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

" ctrlp configuration
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_extensions = ['tag']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_debug=1
" let g:syntastic_quiet_warnings=0
let g:syntastic_auto_loc_list=1                 " automatically open/close Errors window
let g:syntastic_always_populate_loc_list=1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" Matchit (required by vim-textobj-rubyblock)
runtime macros/matchit.vim

" Quickly set ruby filetype
command! FR set filetype=ruby

" Ruby runner configuration:
let g:RubyRunner_open_below = 1
let g:RubyRunner_window_size = 10

" vim-airline configuration:
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Gitv configuration
let g:Gitv_OpenHorizontal = 1

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

" Disable folds in markdown files
let g:vim_markdown_folding_disabled=1

" coffescript tagbar
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

" set langmap for input russian characters in normal mode
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
