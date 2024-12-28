"Plugins ---------------------- {{{

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugs will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"
Plug 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>ji :YcmCompleter GoToDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_filetype_blacklist = {}


" Syntaxt check
Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nnoremap <leader>sy :SyntasticToggleMode<CR>
let g:syntastic_python_checkers = ['python', 'pylint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" snippet engine
Plug 'SirVer/ultisnips'
let g:UltiSnipsSnippetsDir='~/.vim/snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "~/.vim/UltiSnips"]
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger="<c-j>"

" snippet patterns
Plug 'honza/vim-snippets'

" file browser
Plug 'scrooloose/nerdtree'
nnoremap <leader>t :NERDTreeToggle<CR>
" open nerdtree in current file dir
nnoremap <Leader>nt :NERDTree %:p:h<CR>
" NERDTress File highlighting
let NERDTreeIgnore=['\.o$']
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif


" c++/python source overview
Plug 'majutsushi/tagbar'
nnoremap <leader>y :TagbarToggle<CR>

Plug 'tomtom/tlib_vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc_no_folding = 1


"SystemC syntax highlight
"Plug 'Kocha/vim-systemc'

"vim with lldb
"Plug 'gilligan/vim-lldb'
"let g:lldb_map_Lframe = "<leader>f"

"Git wrapper
Plug 'tpope/vim-fugitive'
set diffopt+=vertical
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gc :Git commit -s<cr>
nnoremap <leader>gb :Git blame<cr>



"fugitive extension
Plug 'junegunn/gv.vim'

"Latex
Plug 'gerw/vim-latex-suite'

"Scala
"Plug 'derekwyatt/vim-scala'

"
Plug 'terryma/vim-multiple-cursors'

"Quick comment
Plug 'tpope/vim-commentary'

"Easy Grep
Plug 'dkprice/vim-easygrep'

"Auto pair
"Plug 'jiangmiao/auto-pairs'


"
Plug 'easymotion/vim-easymotion'


" Vim undo tree
Plug 'simnalamburt/vim-mundo'
nnoremap <F5> :MundoToggle<CR>

Plug 'CodeFalling/fcitx-vim-osx'

Plug '/usr/local/opt/fzf'

" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" Arm asm
Plug 'ARM9/arm-syntax-vim'

" Yaml folding
Plug 'pedrohdz/vim-yaml-folds'

" Show indent
Plug 'Yggdroot/indentLine'
nnoremap <leader>id :IndentLinesToggle<CR>
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" Search in Vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'github/copilot.vim'

" Vim mark
Plug 'inkarkat/vim-mark'

" Vim mark dependency
Plug 'inkarkat/vim-ingo-library'


" Diff part of the files
Plug 'AndrewRadev/linediff.vim'
noremap <leader>ldt :Linediff<CR>
noremap <leader>ldo :LinediffReset<CR>

" Minimap like vscode
Plug 'wfxr/minimap.vim'
let g:minimap_width = 20
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 0
noremap <leader>mm :MinimapToggle<CR>


" All of your Plugs must be added before the following line
call plug#end()



"----end vim-plug}}}

"Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


"General configurations
syntax on
colorscheme desert
set number relativenumber
set hlsearch
set tabstop=8
set shiftwidth=8
set autoindent
set backspace=indent,eol,start
set ruler
set expandtab
set mouse=r
set statusline+=%F


"Specific file type setting
au BufRead,BufNewFile *.cpp,*.hpp set cin ai nu sw=2 ts=2 et
au BufRead,BufNewFile *.sh set cin ai nu sw=4 ts=4 expandtab
au BufRead,BufNewFile *.v set cin ai et nu sw=2 ts=2
au BufRead,BufNewFile *.c,*.h set cin ai nu sw=2 ts=8 expandtab
au BufRead,BufNewFile *.py set ai et nu sw=4 ts=4 tw=80 colorcolumn=80
au BufRead,BufNewFile *.pl set ai et nu sw=2 ts=2 tw=80 expandtab
au BufRead,BufNewFile *.hs set ai et nu sw=4 ts=4 tw=80
au BufRead,BufNewFile *.sc set ai et nu sw=4 ts=4 tw=80 filetype=scala
au BufRead,BufNewFile *.rst set ai et nu sw=4 ts=4 tw=80 spell
au BufRead,BufNewFile *.tex set ai et nu sw=4 ts=4 tw=80 spell
au BufRead,BufNewFile *.exp set filetype=tcl sw=8 ts=8 noexpandtab
au BufRead,BufNewFile Jenkinsfile.* set filetype=Jenkinsfile sw=4 ts=4 expandtab
au BufRead,BufNewFile *.jenkinsfile set filetype=Jenkinsfile sw=4 ts=4 expandtab
au BufRead,BufNewFile *.groovy set filetype=Jenkinsfile sw=4 ts=4 expandtab
au BufRead,BufNewFile *.xml set filetype=xml sw=2 ts=2 expandtab
au BufNewFile,BufRead *.s,*.S set expandtab filetype=arm " a
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"don't auto comment the first character
"https://superuser.com/a/271024
set formatoptions-=cro
set formatoptions-=c formatoptions-=r formatoptions-=o


"Edit and source vimrc
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Compile C/C++ in Vim
autocmd FileType c,cpp  nnoremap <buffer> <leader><space> :w<cr>:make<cr>
nnoremap <leader>cn :cn<cr>
nnoremap <leader>cp :cp<cr>
nnoremap <leader>cw :cw 10<cr> 

"Toggle Quick Fix window
nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

"Toggle number
nnoremap <leader>nu :setlocal number!<cr>

"Toggle paste mode
nnoremap <leader>p :setlocal paste!<cr>

"Toggle list
nnoremap <leader>l :setlocal list!<cr>

"Orgnize code
nnoremap <leader>o <ESC>gg=G<C-o><C-o>

" turn off highlight
nnoremap <leader>h :noh<return><esc>

inoremap jk <ESC>

" share clip board
set clipboard=unnamed

" change directory to the current buffer when opening files.
set autochdir

" map esc to exit terminal emulator
:tnoremap <Esc> <C-\><C-n>

" set termguicolors in tmux
" (https://github.com/tmux/tmux/issues/1246)
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set cursorline



" highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" show word count
nnoremap <leader>wc *<C-O>:%s///gn<CR><C-O>

" diff shortcuts
nnoremap <leader>dp :diffput<CR>
nnoremap <leader>dg :diffget<CR>
nnoremap <leader>df :windo diffthis<CR>

" turn on/off spell
nnoremap <leader>sp :set spell!<CR>

" Open the file under cursor in a new tab
nnoremap gf <C-W>gf

" show function name in status bar
fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
nnoremap <leader>f :call ShowFuncName() <CR>
nnoremap <leader>nu :set number! relativenumber! <CR>

fun! SetGnuStyle()
  setlocal cindent
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal softtabstop=2
  setlocal textwidth=79
  setlocal fo-=ro fo+=cql
endfun
nnoremap <leader>gnu :call SetGnuStyle() <CR>

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

" Add table index
fu! MyTabLabel(n)
let buflist = tabpagebuflist(a:n)
let winnr = tabpagewinnr(a:n)
let string = fnamemodify(bufname(buflist[winnr - 1]), ':t')
return empty(string) ? '[unnamed]' : string
endfu

fu! MyTabLine()
let s = ''
for i in range(tabpagenr('$'))
" select the highlighting
    if i + 1 == tabpagenr()
    let s .= '%#TabLineSel#'
    else
    let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    "let s .= '%' . (i + 1) . 'T'
    " display tabnumber (for use with <count>gt, etc)
    let s .= ' '. (i+1) . ' ' 

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

    if i+1 < tabpagenr('$')
        let s .= ' |'
    endif
endfor
return s
endfu
set tabline=%!MyTabLine()
