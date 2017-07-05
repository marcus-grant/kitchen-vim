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

"" vim-markdown - A pretty sane fork of vim-markdown
"" https://github.com/gabrielelana/vim-markdown
Plugin 'gabrielelana/vim-markdown'

""""""""" Removed, too damn tough to get dependencies right
"" YouCompleteMe - A HUGE autocomplete engine
"" https://github.com/Valloric/YouCompleteMe#full-installation-guide
"" Plugin 'Valloric/YouCompleteMe'

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
let g:BASH_AuthorName   = 'Marcus Grant'
let g:BASH_Email        = 'marcus.grant@patternbuffer.io'
let g:BASH_Company      = 'Applied Value Group'


"" Vim-markdown by gabriele lana
"" Extra configs based on plugin
let g:markdown_include_jekyll_support = 0 " turn off jekyll support, jekyll?
"let g:markdown_enable_folding = 1 " enable md folding: TODO: Could be slow
" TODO: This could be a PITA bc there's default mappings, enable for now
let g:markdown_enable_mappings = 1 " Default is to have default map for plug
let g:markdown_spell_checking = 1 " Spell check, default is on
let g:markdown_enable_input_abreviations = 0 " Emoticons and punctuation abrev
" TODO: Default above is on, try it sometime
let g:markdown_enable_conceal = 0 " Default is on, conceals markup symbols

