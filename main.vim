" Main vim file
" Used to load and execute first commands and load other partial --
" -- vim files that are divided by purpose
"

" Divide this file later, for now let's just get the ball rolling

" Automatic .vimrc reload
autocmd! bufwritepost .vimrc source %

" Better copy paste functionality
set pastetoggle=<F2>
set clipboard=unnamed
" unnamed works more like most other clipboarded editors

" Mouse & Backspace
"
set mouse=a " on OSX press ALT and click
set bs=2	" make backspace behave normally

" Rebind <Leader> key
" The leader key is just another key that reveals another keyboard layer
" Don't hold it though, just tap, and then press then next key
let mapleader = ","

" Bind nohl
" Removes highlight of your last search, which is more distracting than useful
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
" I think I'll wait on this one
" noremap <C-Z> :update<CR>
" vnoremap <C-Z> <C-C>:update<CR>
" inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
" Again, wait and play with this one before deciding, I think I might want to
" stay stock with this functionality
" noremap <Leader>e :quit<CR> 	" Quit current Window
" noremap <Leader>E :qa!<CR>	" Quit all windows

" Consider a set of binds for window/tab/pane movement
" HOWEVER - for now I think I'll just stick with moving with tmux or a tiler

" map sort function to a key
" useful for situations like imports in python
" it changes a block of code to be ordered alphabetically
vnoremap <Leader>s :sort<CR>

" Push/Pull indentation levels by one by double tapping the sideways carets
vnoremap < <gv	" better indentation
vnoremap > >gv	" better UN-indentation

""""" Appearance Stuff

" Color scheme
set t_Co=256
color railscasts
