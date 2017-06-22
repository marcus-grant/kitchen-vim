" Plugins config file
" Use this file to list Vundle Plugin links
" Plugin 'githubUsername/repoName'
" Plugin 'git://git.someplace.com/repo-name.git'

" NerdTree - the vim file viewer
Plugin 'scrooloose/nerdtree'

" SimplyFold - proper python code folding
Plugin 'tmhedberg/SimpylFold'

" lightline - minimal status/tabline
" https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'

"" Bash-Support - Bash IDE plugin
"" https://github.com/vim-scripts/bash-support.vim
Plugin 'vim-scripts/bash-support.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" Extra options that are plugin specific
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" bash-support.vim
" this particular line enables filetype plugin detection to be used by plugins
filetype plugin on
" TODO: These below autoheader values aren't being added automatically
" NOTE: when listing the global variable inside vim using echo g:BASH_Email
" it lists the correct value.
let g:BASH_AuthorName   = 'John Doe'
let g:BASH_Email        = 'john.doe@loremipsum.com'
let g:BASH_Company      = 'Lorem Ipsum Inc.'
