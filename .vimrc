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
set cc=80                                      " show 80-digit limit line
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

" set incsearch                                " show search matches as you type
" set spell
" setlocal spell spelllang=ru_yo,en_us
" setlocal spell spelllang=ru_ru_yo,en_us

" Set ruby format for rabl files
au BufRead,BufNewFile *.rabl setf ruby

" autocmd FileType ruby setlocal path+=

" Compile coffee files
" au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" redraw on save
" au BufWritePost * redraw!

" set the runtime path to include Vundle and initialize
filetype off                                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin manager itself:
Plugin 'gmarik/vundle'

" Utils
Plugin 'genutils'
Plugin 'L9'

" Syntax checker
Plugin 'scrooloose/syntastic'

" ack search wrapper
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

" Awesome fuzzy file/buffer/tag finder
Plugin 'kien/ctrlp.vim'

" Automatically add 'end' in ruby code
Plugin 'tpope/vim-endwise'

" Surround brackets, quotes and so on...
Plugin 'tpope/vim-surround'

" Extended repeat (.) command
Plugin 'tpope/vim-repeat'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Move lines
Plugin 'matze/vim-move'

" Easy line alignment
Plugin 'junegunn/vim-easy-align'

" Airline status bar
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-vinegar'

" Native increment for dates and times
Plugin 'tpope/vim-speeddating'

" Easy lines commenting
Plugin 'vim-scripts/tComment'

" Autocompletion
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Pairs of handy bracket mappings
Plugin 'tpope/vim-unimpaired'

" Sidebar with tree explorer
Plugin 'scrooloose/nerdtree'

" Tag bar with class/instance methods
Plugin 'majutsushi/tagbar'

" Swap arguments
Plugin 'PeterRincker/vim-argumentative'

" one-liner / multi-line switcher
Plugin 'AndrewRadev/splitjoin.vim'

" Evernote
Plugin 'https://github.com/neilagabriel/vim-geeknote'

" Reveal in Finder
Plugin 'henrik/vim-reveal-in-finder'

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" Set path from ruby's `$LOAD_PATH` and add .rb suffix
Plugin 'vim-ruby/vim-ruby'

" Set path to include gems specified in Gemfile
Plugin 'tpope/vim-bundler'

" Set path to include lib/
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
Plugin 'henrik/vim-ruby-runner'
Plugin 'skwp/vim-rspec'
Plugin 'tpope/vim-rbenv'

" Git tools
Plugin 'tpope/vim-fugitive'
" PlugiPlugin-scripts/Git-Branch-Info'
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
Plugin 'mhinz/vim-signify'
Plugin 'idanarye/vim-merginal'

" frontend tools support
Plugin 'kchmck/vim-coffee-script'
Plugin 'itspriddle/vim-jquery'
Plugin 'groenewege/vim-less'
Plugin 'firegoby/SASS-Snippets'
" Plugin 'mattn/zencoding-vim'
Plugin 'slim-template/vim-slim'
Plugin 'digitaltoad/vim-jade'
Plugin 'zoeesilcock/vim-caniuse'
Plugin 'Shutnik/jshint2.vim'

" markdown support
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-preview'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'zeis/vim-kolor'
Plugin 'tomasr/molokai'

" Emoji
Plugin 'junegunn/vim-emoji'

" Tmux integration
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

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
nnoremap <leader>a :Ack
nnoremap <silent> <F5> :BookmarkToRoot          " NERDTree: add new bookmark
nnoremap <silent> <F6> :NERDTreeFind<CR>        " NERDTree: open current file in tree
nnoremap <silent> <F7> :NERDTreeToggle<CR>      " NERDTree: toogle tree
nnoremap <silent> <F10> :EvervimNotebookList<CR>" Evernote: show notebooks
nnoremap <Leader>m :Emodel
nnoremap <Leader>c :Econtroller
nnoremap <Leader>v :Eview
nnoremap <Leader>r :CoffeeRun<CR>               " Execute coffescript
nnoremap <leader>f :CtrlPTag<CR>                " Toggle ctrlp

" Change quotes type
nnoremap <silent>'  :<C-U>call <SID>ToggleQuote()<CR>

" Change old-style ruby hash to 1.9-style
map <Leader>h :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc

" vim repeat command by .
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" map <silent> <F8> :Gitv<CR>
" map <silent> <F6> :call GITLOG_ToggleWindows()

" vim-changed configuration
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
let g:syntastic_auto_loc_list=1
let g:syntastic_always_populate_loc_list=1
" let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_ruby_checkers = ['mri']

" Quickly set ruby filetype
command! FR set filetype=ruby

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

" Caniuse configuration
nmap <leader>css <Plug>Ncaniuse

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
