set tabstop=4
set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set ruler
set background=light
set sw=4
set hidden
filetype plugin on
set clipboard=unnamedplus
syntax on
if has('gui_running')
  set guifont=Terminus\ 8
endif

colorscheme desert

augroup __latex__
au!
autocmd BufRead,BufNewFile *.tex inoremap ,ee \emph{}<Left>
autocmd BufRead,BufNewFile *.vhd inoremap ,. <Esc>F{lyt}f}a\end{}<Esc>PF\i
augroup END

highlight OverLength ctermbg=red ctermfg=white guibg=#992222
match OverLength /\%81v.\+/
