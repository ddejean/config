" === General configuration ===
set nocompatible                " No VI compatibility
set autochdir                   " Jump to current directory
set showcmd                     " Display current command
set ruler                       " Show cursor position in status bar
set fileformats=unix,dos,mac
set mouse=a                     " Enable mouse
set bs=2                        " Do backspace work in command mode
set textwidth=75                " Enable almost 80 char for text formatting
set wildmode=longest:full       " Enable file name completion like bash
set wildmenu


" === GUI ===
if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ 9    " Font
    set guioptions+=ce                   " c: use GTK tabs e: no popups
    set guioptions+=m
    set columns=95
    set lines=47
endif


" === Vim and general programming features ===
syntax on                       " Syntax coloration
set syntax=on
filetype plugin indent on       " Activate indentation and code plugins
set showmatch                   " Highlight parenthesis
set number                      " Activate line number
set numberwidth=5               " on 5 column at the left


" === Search features ===
set incsearch                   " Cursor on found expression
set ignorecase                  " Case unsensitive search
set smartcase                   " Search is sentitive to case only if there is
                                " caps in the searched expression
" F5 key toggle search highlighting
map <F5> :set hls!<bar>set hls?<CR>


" === Spell features ===
set spelllang=en,fr             " Load english and french
set spellsuggest=5              " 5 fix proposition
" F6 key toggle spelling
map <F6> :set spell!<bar>set spell?<CR>


" === Auto-completion ===
set wildmenu                    " Completion menu
" Change default highlight color in menu
hi PmenuSel ctermfg=White ctermbg=Blue cterm=Bold
" Ignore following files for completion
set wildignore+=*.o,*.so,*.obj,*.a,*.tar,*.tgz
set wildignore+=*.aux,*.blg,*.dvi,*.log,*.pdf,*.ps,*.eps
set wildmode=list:longest,list:full " Longue liste

" Auto-complete using TAB
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <tab> <C-r>=InsertTabWrapper()<cr>


" =======================
" === Code formatting ===
" =======================
set tabstop=4                   " Defaut: tabs = 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" C style code
autocmd Filetype c,objc setlocal tabstop=8
autocmd Filetype c,objc setlocal shiftwidth=8
autocmd Filetype c,objc setlocal softtabstop=8

" C++ style: smaller tabs because it could be verbose
autocmd Filetype cpp setlocal tabstop=4
autocmd Filetype cpp setlocal shiftwidth=4
autocmd Filetype cpp setlocal softtabstop=4

" Java coding style
autocmd Filetype java setlocal tabstop=4
autocmd Filetype java setlocal shiftwidth=4
autocmd Filetype java setlocal softtabstop=4

" Ada coding style
autocmd Filetype ada setlocal tabstop=3
autocmd Filetype ada setlocal shiftwidth=3
autocmd Filetype ada setlocal softtabstop=3
let g:ada_standard_types=1      " Add color to standard types
let g:ada_line_errors=1         " Display long lines

" Python coding style
autocmd BufRead,BufNewFile *.py setlocal tabstop=4
autocmd BufRead,BufNewFile *.py setlocal shiftwidth=4
autocmd BufRead,BufNewFile *.py setlocal softtabstop=4


" === TagList ===
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Use_SingleClick = 1


" === Clang complete ===
let g:clang_auto_select = 1
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_hl_errors = 1
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_user_options = '-I/usr/lib/clang/3.1/include'
let g:clang_close_preview = 1
let g:clang_use_library = 1
let g:clang_library_path="/usr/lib/llvm/"
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1


