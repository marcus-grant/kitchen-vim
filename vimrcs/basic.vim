" Basic config file for vim
" Place any global and miscalaneous configs in here

" Automatic .vimrc reload
autocmd! bufwritepost .vimrc source %

" Better copy paste functionality
set pastetoggle=<F2>
set clipboard=unnamed
" unnamed works more like most other clipboarded editors

" Enable & configure code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
