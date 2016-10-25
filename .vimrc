"=============================================================================
"
"        Filename: vimrc
"
"          Author: Wei Shi
"
"=============================================================================
"set encoding=cp936
set nocp
set nocscopeverbose
set autoread
set smartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set textwidth=79
set ignorecase
set smartcase
set showmode
set hidden
set ttyfast
set incsearch
set showmatch
set hlsearch
set laststatus=2
set relativenumber
set completeopt=longest,menu
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
nnoremap <F2> :set number! relativenumber!<CR>
nnoremap <silent> <F3> :Rgrep<CR>
nnoremap <F4> :set nonumber norelativenumber<CR>
set pastetoggle=<F5>
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
nnoremap <F7> :FencAutoDetect<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class"
set foldmethod=syntax
autocmd FileType python set foldmethod=indent
set foldlevel=99
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
Plugin 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplCycleArround=1
Plugin 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
Plugin 'vim-scripts/taglist.vim'
set tags=tags;/
let Tlist_Ctags_Cmd="/usr/bin/ctags"
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 25
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
Plugin 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0
Plugin 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '¦'
Plugin 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
au FileType python let b:delimitMate_nesting_quotes = ['"']
Plugin 'godlygeek/tabular'
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
Plugin 'scrooloose/syntastic'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
let g:syntastic_python_checkers=['pyflakes']
highlight SyntasticErrorSign guifg=white guibg=black
Plugin 'kevinw/pyflakes-vim'
let g:pyflakes_use_quickfix = 0
Plugin 'hdima/python-syntax'
let python_highlight_all = 1
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1
Plugin 'vim-scripts/TaskList.vim'
map <leader>td <Plug>TaskList
Plugin 'bufexplorer.zip'
Plugin 'grep.vim'
Plugin 'netrw.vim'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_max_signs = 500  " default value"
Plugin 'vim-scripts/VisIncr'
Plugin 'mbbill/fencview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""
" Color Theme
""""""""""""""""""""""""""""""
if exists('$DISPLAY')
"    colorscheme solarized
"    colorscheme molokai
    if has('gui_running')
        set background=dark
    else
        set background=light
    endif
else
    colorscheme desert
endif
""""""""""""""""""""""""""""""
" User defined
""""""""""""""""""""""""""""""
"set path=.,/usr/include
":cs add /home/john/qsweb/cscope.out /home/john/qsweb
