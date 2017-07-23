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

" Disabled for now, too complicated, bad documentation, don't have infinite
" time to setup.
"" jaxbot/browserlink.vim
"" https://github.com/jaxbot/browserlink.vim
"" Series of vim stuff to create a live preview of web based code
" Plugin 'jaxbot/browserlink.vim'

""""""""" Removed, too damn tough to get dependencies right
"" YouCompleteMe - A HUGE autocomplete engine
"" https://github.com/Valloric/YouCompleteMe#full-installation-guide
"" Plugin 'Valloric/YouCompleteMe'

"" vim-indent-guides
"" https://github.com/nathanaelkane/vim-indent-guides
"" Creates visual indent rulers to make it easier to view indent levels
Plugin 'nathanaelkane/vim-indent-guides'

"" Emmmet
"" Great tool to speed up html/css dev
"" https://github.com/mattn/emmet-vim
Plugin 'mattn/emmet-vim'

"" vim-javascript
"" Better syntax highlighting and indents for all JS files
"" https://github.com/pangloss/vim-javascript
"Plugin 'pangloss/vim-javascript'
"""" USING improved version instead


"" vim-jsx
"" A syntaxt highlighting, indenter and transformer for React and JSX
"" https://github.com/mxw/vim-jsx
Plugin 'mxw/vim-jsx'


"" neocomplete
"" Buffer and file cache based autocompletion
"" https://github.com/Shougo/neocomplete.vim
Plugin 'Shougo/neocomplete.vim'


"" improved vim-jsx
Plugin 'chemzqm/vim-jsx-improve'


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
let g:markdown_mapping_switch_status = '<Leader>s' " Change default switch status to free up spacebar


"" vim-indent
" Have indents on by default
let indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let indent_guides_guide_size = 1
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=236


"" Emmet
let g:user_emmet_install_global = 0
" to enable working on jsx files saved as .js
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
" enable only for html, css, js with jsx
autocmd FileType html,css,javascript.jsx,javascript EmmetInstall
" Only normal mode functionality
let g:user_emmet_mode='a'
" Uncomment to allow all modes
"let g:user_emmet_mode='a'
" How to add snippets
" let g:user_emmet_settings =
" webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
" Change the path to whatever you need


"" vim-javascript
" enable syntax highlighting for JSDocs & NGDocs
"let g:javascript_plugin_jsdoc = 1
"let g:javascript_plugin_ngdoc = 1
" syntax highlighting for flow
"let g:javascript_plugin_flow = 1
" folding based on the plugins syntax file
"set foldmethod=syntax

"" vim-jsx
" enforce vim-jsx on all js file extensions
let g:jsx_ext_required = 0


"" neocomplete
" enabled at startup
let g:neocomplete#enable_at_startup = 1
" smart case
let g:neocomplete#enable_smart_case = 1
" minimum search length for syntax
let g:neocomplete#sources#syntax#min_keyword_length = 3




