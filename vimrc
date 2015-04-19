" https://github.com/terryma/dotfiles/blob/master/.vimrc (useful vimrc)

" matcit plugin that ships with vim, just need to enable it
runtime macros/matchit.vim

" pathogen.vim for installing nifty stuffs
" runtime ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax enable
set number

if &term == "xterm" || &term == "screen-bce"
    set t_Co=256
    colorscheme zenburn
endif

" paste and autoindent
set pastetoggle=<F10>

" create a bar for airline
set laststatus=2
let g:airline_powerline_fonts = 1 

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_left_sep="\u25B6"
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_right_sep="\u25C0"
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" enable/disable bufferline integration
" let g:airline#extensions#bufferline#enabled = 1
"enable/disable enhanced tabline
let g:airline#extensions#tabline#enabled = 1 
" enable/disable displaying buffers with a single tab. >
let g:airline#extensions#tabline#show_buffers = 1

" Enable filetype plugins
filetype plugin off
filetype indent on
filetype plugin indent on
filetype detect

" set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" :close
let mapleader=","
" this is the same
" let g:mapleader=","

" fast saving
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>Q :q!<CR>
" quick save in insert mode

inoremap CC <Esc>C
inoremap SS <Esc>Sa
inoremap DD <Esc>dda
inoremap UU <Esc>u
inoremap SF <Esc>:w<CR>

" Ctrl-s to save
inoremap <C-s> <c-o>:w<cr>
" in insert mode
inoremap <C-s> <Esc>:w<CR>a

" map in normal mode
" nnoremap <C-s> :w<cr>

" tab navigation    
"""" END of my leader shortcuts
" Mappings to access buffers (don't use "\p" because a
"  delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" finding matching
nnoremap <Leader>m %
vnoremap <Leader>m %

" Use Ctrl-{hjkl}
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" search for term under cursor
nnoremap <Leader>s * 
vnoremap <Leader>s *

" make Q ( command to get into Ex Mode ) harmless
nnoremap Q <nop>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" Unite
" let g:unite_source_history_yank_enable = 1
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
" nnoremap <leader> :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
" nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
" nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
" nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
" nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
" 
" " Custom mappings for the unite buffer
" autocmd FileType unite call s:unite_settings()
" function! s:unite_settings()
"   " Play nice with supertab
"   let b:SuperTabDisabled=1
"   " Enable navigation with control-j and control-k in insert mode
"   imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"   imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
" endfunction
"""" End navitation mappings

set backspace=eol,start,indent

"""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildmode=list:longest,full

set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Allow changing buffer without saving it first
set hidden

" ingnore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" make search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" show matching brackets when text indicator is over them
set showmatch

" Show incomplete commands
set showcmd

" Explicitly set encoding to utf-8
set encoding=utf-8

" turn on vim's features
set nocompatible

" Remove ALL autocommands for the current group
" autocmd!
" Reload vimrc when edited
if has('autocmd')
    autocmd bufwritepost .vimrc source $MYVIMRC
endif
" autocmd MyAutoCmd BufWritePost .vimrc,_vimrc,.gvimrc,_gvimrc,gvimrc
"     \ so $MYVIMRC | if has('gui_running')  so $MYGVIMRC | endif

nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :e 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=2
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set foldmethod=indent
set foldlevel=99

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
autocmd FileType javascript       let b:comment_leader = '// '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

let s:comment_map = {
    \   "c": '// ',
    \   "cpp": '// ',
    \   "go": '// ',
    \   "java": '// ',
    \   "javascript": '// ',
    \   "php": '// ',
    \   "python": '# ',
    \   "ruby": '# ',
    \   "vim": '" ',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^" . comment_leader
            " Uncomment the line
            execute "silent s/^" . comment_leader . "//"
        else
            " Comment the line
            execute "silent s/^/" . comment_leader . "/"
        endif
    else
        echo "No comment leader found for filetype"
    end
endfunction

nnoremap <leader><Space> :call ToggleComment()<cr>
vnoremap <leader><Space> :call ToggleComment()<cr>

" exit insert mode
imap ii <Esc>


""""""""""""""""""""""""""""""""""""
" Plugins configuration section    "
""""""""""""""""""""""""""""""""""""

"""""""""""""
"   TagBar  "
"""""""""""""
nnoremap <Leader>v :TagbarToggle<CR>

""""""""""
" NerdTree
""""""""""
nnoremap <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""
" CTRLP
" """"""""
" let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

"""""""""
" YCM
"""""""""

" will put icons in Vim's gutter on lines that have a diagnostic set.
" Turning this off will also turn off the YcmErrorLine and YcmWarningLine
" highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info


let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'

nnoremap <F11> :YcmForceCompileAndDiagnostics<CR>

""""""""""""
" Syntastic
""""""""""""
" use Ctrl-W E to toggle error checking by syntastic
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Syntastic config
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['python', 'javascript'],
            \ 'passive_filetypes': ['html'] }

let g:syntastic_ignore_files = []

" Use flake8
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

" Use jshint (uses ~/.jshintrc)
let g:syntastic_javascript_checkers = ['jshint']

" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_no_include_search=0
" let g:syntastic_javascript_checkers=['/usr/local/bin/jshint']
" let g:syntastic_html_jshint_conf = "$HOME/.jshintrc"
" let g:syntastic_coffeescript_checkers=["coffeelint"]
" let g:syntastic_cpp_compiler="g++"
" let g:syntastic_cpp_compiler_options = " -std=c++11"
" let g:syntastic_java_checkers = []
if has("unix")
    let g:syntastic_error_symbol = "█"
    let g:syntastic_style_error_symbol = ">"
    let g:syntastic_warning_symbol = "█"
    let g:syntastic_style_warning_symbol = ">"
else
    let g:syntastic_error_symbol = "X"
    let g:syntastic_style_error_symbol = ">"
    let g:syntastic_warning_symbol = "!"
    let g:syntastic_style_warning_symbol = ">"
endif
