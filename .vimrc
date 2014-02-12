" Sample .vimrc file by Martin Brochhaus
" Zenterprises INC


" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

" set pastetoggle=<F2>
" set clipboard=unnamed


" Mouse and backspace
"" set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
 let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
 noremap <C-n> :nohl<CR>
 vnoremap <C-n> :nohl<CR>
 inoremap <C-n> :nohl<CR>


" Quicksave command
 nnoremap <C-A> :update<CR>
 vnoremap <C-A> <C-C>:update<CR>
 inoremap <C-A> <C-O>:update<CR>

 nnoremap s :update<CR>

" Quick quit command
 noremap <Leader>e :quit<CR>  " Quit current window
 noremap <Leader>E :qa!<CR>   " Quit all windows

 nnoremap q :quit<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
 map <c-j> <c-w>j
 map <c-k> <c-w>k
 map <c-l> <c-w>l
 map <c-h> <c-w>h


" easier moving between tabs
 map <Leader>n <esc>:tabprevious<CR>
 map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
 vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), then select several lines of code here and
" then press ``>`` several times.
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"" set t_Co=256
"" color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
 ""filetype off
 ""filetype plugin indent on
 ""syntax on


" Showing line numbers and length
 set number  " show line numbers
 set tw=79   " width of document (used by gd)
 set nowrap  " don't automatically wrap on load
 set fo-=t   " don't automatically wrap text when typing
 set colorcolumn=80
 highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
"" vmap Q gq
"" nmap Q gqap


" Useful settings
"" set history=700
"" set undolevels=700


" Real programmers don't use TABs but spaces
"" set tabstop=4
"" set softtabstop=4
"" set shiftwidth=4
"" set shiftround
"" set expandtab


" Make search case insensitive
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
 set nobackup
 set nowritebackup
 set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
"" call pathogen#infect()

" =====================
" My Stuff
" ====================

"Load plugins from pathogen and vimballs in the .vim/ directory
execute pathogen#infect()
filetype plugin on


"Route the semi-colon as a colon to type commands faster
nnoremap ; :


" Real programmers don't use TABs but spaces
set ls=2 
set ts=4
set tabstop=4 " size of a hard tabstop
set expandtab " always uses spaces instead of tab characters
set softtabstop=4 " Sets the number of columns for a TAB
set shiftwidth=4 " for block comments
set nocompatible
set backspace=2
set ignorecase


"Status line - show the percentage through a file 
""set statusline +=\ %P 
""set statusline +=%4*\ %<%F%*            "full path


"Turn on syntax highlighting
syntax on


"Get home and end to work on osx
""map  <Esc>[7~ <Home>
""map  <Esc>[8~ <End>
""imap <Esc>[7~ <Home>
""imap <Esc>[8~ <End>


"NERDTree plugin
"If nerdtree's the only open window when you close vi, then close the nerdtree window too
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"load nerdtree automatically when vi starts
"autocmd vimenter * NERDTree

"autoload nerdtree, even if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" ============================================================================
" Python IDE Setup
" ============================================================================
"
"Simple compile/run scripts
map <F8> :update<CR> :!python %<CR>

"Quick code commenting 
map c i#<C-c><left> 


" --Nah-- Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
"" set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
 let g:ctrlp_max_height = 30
 set wildignore+=*.pyc
 set wildignore+=*_build/*
 set wildignore+=*/coverage/*


" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"" map <Leader>g :call RopeGotoDefinition()<CR>
"" let ropevim_enable_shortcuts = 1
"" let g:pymode_rope_goto_def_newwin = "vnew"
"" let g:pymode_rope_extended_complete = 1
"" let g:pymode_breakpoint = 0
"" let g:pymode_syntax = 1
"" let g:pymode_syntax_builtin_objs = 0
"" let g:pymode_syntax_builtin_funcs = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
" defaults
 let g:jedi#goto_assignments_command = "<leader>g"
 let g:jedi#goto_definitions_command = "<leader>d"
 let g:jedi#documentation_command = "K"
 let g:jedi#usages_command = "<leader>n"
 let g:jedi#completions_command = "<C-Space>"
 let g:jedi#rename_command = "<leader>r"
 let g:jedi#show_call_signatures = "1"

" prefs
" use splits not buffers
 let g:jedi#use_splits_not_buffers = "left"
 let g:jedi#usages_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
 map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
"" set completeopt=longest,menuone
"" function! OmniPopup(action)
""     if pumvisible()
""         if a:action == 'j'
""             return "\<C-N>"
""         elseif a:action == 'k'
""             return "\<C-P>"
""         endif
""     endif
""     return a:action
"" endfunction

"" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
"" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
 set nofoldenable

"=======================
" Clang -- C and C++ IDE
" git clone https://github.com/Rip-Rip/clang_complete.git
" requires sudo apt-get install libclang-dev
" (and possibly libclang1 as well)
" '::', '->', '.'   open completion lists
" K     takes you to docs
" Ctrl+]    take you to function def
" Ctrl+t    takes you back
"=======================
""let g:clang_use_library = 1 
""let g:clang_library_path = "/usr/lib/"
let g:clang_complete_patterns = 1
let g:clang_auto_select = 1
let g:clang_complete_copen = 1
""let g:clang_periodic_quickfix = 1
let g:clang_snippets = 1
let g:clang_user_options='-std=gcc' 
map <F2>  :call g:ClangUpdateQuickFix()<CR>

"Simple compile/run scripts
map <F4> :update<CR> :!gcc % -o %.out -lm <CR>
map <F3> :!./%.out<CR>

"Quick code commenting 
nnoremap C i//<C-c><left><left> 
