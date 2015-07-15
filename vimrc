"" Zenterprises INC
" Inspirations are listed throughout via links including the following:
" Martin Brochhaus
"
"dbext plugin
"Adding connection profiles is the best way to use dbext, :h dbext.txt has lots of examples of different profiles for different databases.
"<Leader>sbp - connect to a sql db 
"<leader>slt - SQL List Table - lists all of the tables of the db
"<leader>sdt - SQL Describe Table - describes the table whose name is under your cursor
"<leader>se  - SQL Execute - executes the line your cursor is on (command mode) or all selected text (visual mode)
  let g:dbext_default_profile_mmpropdata='type=PGSQL:host=psci01:port=5432:dbname=mmpropdata:user=data:passwd=attract2extensive3everyone7boundary17'
  let g:dbext_default_profile_qdb01='type=PGSQL:host=146.148.43.234:port=5432:dbname=mm2qa:user=data:passwd=Skill4Forgive1Representative1Hasten12'
  let g:dbext_default_profile_vagrant='type=PGSQL:host=10.0.10.2:port=5432:dbname=mm2qa:user=postgres'

"===================VUNDLE========================================
set nocompatible              " be iMproved, required
filetype off                  " required

" sum up numbers on multible lines in a visual selection
"vmap gs y'>p:'[,']-1s/$/+/\|'[,']+1j!<CR>'[0"wy$:.s§.*§\=w§<CR>'[yyP:.s/./=/g<CR>_j
"vmap gs y'>p:'[,']-1s/$/+/\|'[,']+1j!<CR>'[0"wy$:.s§.*§\=w§<CR>'[yyP:.s/./=/g_j<CR>+1!bc<CR>kJ
"vmap gs y'>p:'[,']-1s/$/+/\|'[,']+1j!<CR>'[0"wy$:.s§.*§\=w§<CR>'[yyP:.s/./=/g_j<CR>
"vmap gs y'>p:'[,']-1s/$/+/\|'[,']+1j!<CR>'[0"wy$:.s§.*§\=w§<CR>i==<CR><ESC>V:!bc<CR>

"works - just not with whitespace, turn off highlighting
vmap gs y'>p:'[,']-1s/$/+/\|'[,']+1j!<CR>i==<CR><ESC>V:!bc<CR>

"ConqueTerm Warning
autocmd! CursorHoldI
autocmd! CursorMovedI

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" Plugin 'vim-scripts/Command-T'
 Plugin 'wolfpython/cscope_map.vim'
 Plugin 'vim-scripts/csv.vim'
"  Plugin 'vim-scripts/EasyGrep'
"  Plugin 'jmcantrell/vim-virtualenv'
"  Plugin 'tpope/vim-fugitive'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'scrooloose/nerdtree'
 Plugin 'carlobaldassi/ConqueTerm'
 Plugin 'itchyny/calendar.vim'
 Plugin 'vim-scripts/dbext.vim'
" Plugin 'ervandew/supertab'
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
 " Git plugin not hosted on GitHub
 "Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
 "Plugin 'file:///home/gmarik/path/to/plugin'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Avoid a name conflict with L9
 "Plugin 'user/L9', {'name': 'newL9'}

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
" :PluginClean      
"- confirms removal of unused plugins; append `!` to
" auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup CalendarKey
    autocmd!
    autocmd FileType calendar nmap <buffer> f <Plug>(calendar_close_task)
    "autocmd FileType calendar nunmap <buffer> {key}
augroup END

"YouCompleteMe Debugging
" let g:ycm_server_keep_logfiles = 0
" let g:ycm_server_log_level = 'debug'
 let g:ycm_path_to_python_interpreter = '/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python'
" let g:ycm_auto_trigger = 1
" "let g:ycm_path_to_python_interpreter = '/Users/ntomasino/anaconda/bin/python'
" let g:ycm_filetype_blacklist = {}

"VirtualEnv
let g:virtualenv_directory = '/Users/ntomasino/miniconda/'
"SUPERTAB
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview
"=================================================================
"
" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %

" home and end, page up and page down mappings 
 noremap H <home>
 vnoremap H <home>
 noremap L <end>
 vnoremap L <end>
 noremap K <pageup>
 vnoremap K <pageup>
 noremap J <pagedown>
 vnoremap J <pagedown>

" Change between files more quickly when editing multiple files
" use :files to see all open files
 nnoremap b :buffers<CR>
 nnoremap ` :buffers<CR>:buffer<SPACE>

"Tags 
" ctags -R src/  -- sets up a tags file which allows definition jumping
" with Ctrl-] and Ctrl-T to jump back. ( or g] )
"semicolon means it starts in the cur dir and searches up directories until it
"hits a tags file
set tags=tags;

" Jump Between Tags (forwards and back respectively)
 nnoremap <C-u> <C-]> 
 nnoremap <C-i> :tn<CR>
 nnoremap <C-y> <C-t>

" tBetter copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
" vnoremap <C-c> "*y need to compile with +clipboard for this
" set pastetoggle=<F2>
 set clipboard=unnamed

" Spell checking 
"change misspelled words from getting highlighted to underlined
" z= gives a list of suggestions for misspelled words
" set spell might work too
hi clear SpellBad
hi SpellBad cterm=underline
"  setlocal spell spelllang=en_us "uncomment this to allow spell-checking


" Mouse and backspace
"" set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
 let mapleader = " "


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
 noremap <leader>n :nohl<CR>

" Quicksave command
 nnoremap <C-A> :update<CR>
 vnoremap <C-A> <C-C>:update<CR>
 inoremap <C-A> <C-O>:update<CR>

 nnoremap s :update<CR>
 nnoremap w ge

" Quick quit command
 noremap <Leader>e :quit<CR>  " Quit current window
 noremap <Leader>E :qa!<CR>   " Quit all windows

 nnoremap q :quit<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
 noremap <c-j> <c-w>j
 noremap <c-k> <c-w>k
 noremap <c-l> <c-w>l
 inoremap <c-l> <c-w>l
 noremap <c-h> <c-w>h


" easier moving between tabs
" map <Leader>n <esc>:tabprevious<CR>
" map <Leader>m <esc>:tabnext<CR>


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
 if !has('gui_running')
   set t_Co=256
 endif

" Enable syntax highlighting
" You need to reload this file for the change to apply
 ""filetype off
 ""filetype plugin indent on
 ""syntax on


" Showing line numbers and length
"" set number  " show line numbers
" set textwidth=120   " width of document (used by gd)
"  set nowrap  " don't automatically wrap on load
 set fo-=t   " don't automatically wrap text when typing
 set colorcolumn=120
 highlight ColorColumn ctermbg=DarkGrey
 hi CSVColumnEven term=bold ctermbg=4 guibg=DarkBlue                             
 hi CSVColumnOdd  term=bold ctermbg=darkgrey guibg=DarkGrey

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
""execute pathogen#infect()
filetype plugin on "might change to just 'filetype on'


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
set statusline =%f\ %P 
""set statusline +=%4*\ %<%F%*            "full path


"Turn on syntax highlighting
syntax on
highlight Comment ctermfg='darkgrey'
highlight Number ctermfg='blue'
highlight String ctermfg='yellow'
highlight Float ctermfg='blue'

"Get home and end to work on osx
""map  <Esc>[7~ <Home>
""map  <Esc>[8~ <End>
""imap <Esc>[7~ <Home>
""imap <Esc>[8~ <End>

"Cursor Changes depending on mode
" Enable CursorLine
" set cursorline
set cursorcolumn

"from http://vim.wikia.com/wiki/Configuring_the_cursor
"not working ...
"highlight Cursor ctermfg=white ctermbg=black
"highlight iCursor ctermfg=white ctermbg=blue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

" Default Colors for CursorLine
" highlight  CursorLine ctermbg=None ctermfg=None
highlight  CursorColumn ctermbg=DarkGrey ctermfg=None

" Change Color when entering Insert Mode
"autocmd InsertEnter * hightlight CursorLine ctermbg=None ctermfg=None
"autocmd InsertEnter * highlight Cursor guifg=red ctermfg=blue

" Revert Color to default when leaving Insert Mode
" autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None
autocmd InsertLeave * highlight Cursor guifg=red

"PLUGINS
"
"ConqueTerm
"allow window switching while conque is still in insert mode
let g:ConqueTerm_CWInsert = 0
let g:ConqueTerm_SendVisKey = '<F9>'
"nnoremap <C-m> V"<F9>"

"NERDTree plugin
"If nerdtree's the only open window when you close vi, then close the nerdtree window too
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"load nerdtree automatically when vi starts
"autocmd vimenter * NERDTree

"autoload nerdtree, even if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" ============================================================================
" General IDE Setup
" ============================================================================

"not sure about these exactly
"autocmd BufNewFile,BufRead *.py set ft=python
"autocmd BufNewFile,BufRead *.json set ft=javascript
"autocmd BufNewFile,BufRead *.conf set ft=javascript
"autocmd BufNewFile,BufRead *.config set ft=javascript
"
"au! BufRead,BufNewFile *.json setfiletype json 
"au! BufRead,BufNewFile *.conf setfiletype json 
"au! BufRead,BufNewFile *.config setfiletype json 
"au! BufRead,BufNewFile *.scala setfiletype scala
"au! BufRead,BufNewFile *.py setfiletype python
"au! BufRead,BufNewFile *.c setfiletype c

"Folding
"zM fold all
"zR unfold all
set foldmethod=indent
set nofoldenable
nnoremap f zm
nnoremap F zr

"autocmd FileType c setlocal foldmethod=syntax
"autocmd FileType c nnoremap f zM
"autocmd FileType c nnoremap F zR

set completeopt+=longest

" ============================================================================
" Python IDE Setup
" ============================================================================
"
"Simple compile/run scripts
autocmd FileType py map <F8> :update<CR> :!python %<CR>

"Execute the visually selected text
"autocmd FileType py map <C-CR> :'<,'>w !python
vnoremap <C-CR> :'<,'>w !python

"Quick code commenting 
" autocmd FileType py map c i#<C-c><left> 


" --Nah-- Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
"" set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
" let g:ctrlp_max_height = 30
" set wildignore+=*.pyc
" set wildignore+=*_build/*
" set wildignore+=*/coverage/*


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
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#show_call_signatures = "1"
"
"" prefs
"" use splits not buffers
" let g:jedi#use_splits_not_buffers = "left"
" let g:jedi#usages_command = "<leader>z"
"  let g:jedi#popup_on_dot = 1
" let g:jedi#popup_select_first = 0
"  map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

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

" script type
"ftplugin
" 
"description
"Folding goes like this: 
"
"1. Only top level class or function definitions are folded (no nesting) 
"2. Folding is done one line after the class or function definition, so 
"    for example the line 'class foo( bar )' is right above the fold 
"3. Fold text is the first line of the corresponding docstring (if any) 
"    together with the number of folded lines 
"4. Toggle all folds on/off with the key F 
"5. Toggle the fold under the cursor on/off with the key f 
"6. In some rare cases folding can break down which can be fixed by :call
"ReFold() 
"    The reason for this break down is not known sometimes it happens when
"jumping 
"    between different files using tags.
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
"
"let g:clang_use_library = 1 
"let g:clang_library_path = "/usr/lib/"
"let g:clang_complete_patterns = 1
"let g:clang_auto_select = 1
"let g:clang_complete_copen = 1
""let g:clang_periodic_quickfix = 1
"let g:clang_snippets = 1
"let g:clang_user_options='-std=gcc' 
"autocmd FileType c map <F2>  :call g:ClangUpdateQuickFix()<CR>

"Simple compile/run scripts
autocmd FileType c map <F4> :update<CR> :!gcc % -o %.out -lm <CR>
autocmd FileType c map <F3> :!./%.out<CR>

"Debugging with gdb
"break <linenumber>     sets a breakpoint on that line
"run    runs the program
"step   steps through the code
"continue   continues to next breakpoint
"map <F6> :update<CR> :!gcc % -g -o %.out -lm <CR> :!gdb %.out<CR>

"Debugging with cgdb
"git clone git://github.com/cgdb/cgdb.git
"autocmd FileType c map <F5> :update<CR> :!gcc % -g -o %.out -lm <CR> :!cgdb %.out<CR>

"Quick code commenting 
"autocmd FileType c nnoremap c i/**/<left><left>

" ============================================================================
" Java IDE Setup
" ============
" http://vim.sourceforge.net/scripts/script.php?script_id=1785
" 
" Clone below into ~/.vim/bundle for pathogen to auto-install
" https://github.com/vim-scripts/javacomplete
" Ctrl-X Ctrl-O opens up autocomplete by default
" ============================================================================
"autocmd Filetype java,groovy,scala setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java,groovy,scala setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java,groovy,scala setlocal completefunc=javacomplete#CompleteParamsInfo
"autocmd Filetype java,groovy,scala inoremap . .<C-x><C-O>

" Commenting
"autocmd FileType java,groovy,scala nnoremap c i//<ESC>
"
" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType text             let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
" autocmd FileType sql              let b:comment_leader = '\-\- '
autocmd FileType sql              let b:comment_leader = '-- '
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
noremap <silent> <leader>c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>C :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
noremap <silent> <leader>t :s/^/[[ /e<CR>:nohlsearch<CR> :s/$/ ]]/e<CR>:nohlsearch<CR>
