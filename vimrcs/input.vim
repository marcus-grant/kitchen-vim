""""" Bindings & Input
" Proper Space/Tab handling
" from http://bit.ly/2tpgyEaK
filetype plugin indent on
" show existing tab with 4 spaces of width
set tabstop=4
" when indenting with '>', use 4 spaces of width
set shiftwidth=4
" add 4 spaces when pressing tab
set expandtab

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

" Remap za for toggling a fold to '+'
" NOTE still deciding best single key for folding
" vnoremap <=> za

" Remap space to command prompt ie ':'
noremap <space> :


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
