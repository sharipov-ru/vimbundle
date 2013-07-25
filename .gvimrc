set guioptions-=T
set nowrap
set vb t_vb=
set showtabline=2
set tabpagemax=15
nmap ,t :tabnew<CR>
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
colorscheme railscasts

" vim-ruby-debugger configuration:
let g:ruby_debugger_progname = 'mvim'

set guifont=Monaco\ for\ Powerline:h12

highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000
