set guioptions-=T
set vb t_vb=
set showtabline=2
set tabpagemax=15
set linespace=2

nmap ,t :tabnew<CR>
imap <C-L> :tabnext<CR>i
imap <C-H> :tabprev<CR>i

" colorscheme molokai
" colorscheme kolor
" colorscheme railscasts
" colorscheme codeschool
colorscheme kolor

" vim-ruby-debugger configuration:
let g:ruby_debugger_progname = 'mvim'

" Font
" set guifont=Monaco:h12
" set guifont=Source\ Code\ Pro\ For\ Powerline:h12
set guifont=Anonymice\ Powerline:h14

highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000
