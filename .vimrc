"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')
" call dein#add('Shougo/neocomplcache', {'on_i': 1})
call dein#add('junegunn/fzf', {'build': './install --all'})
call dein#add('junegunn/fzf.vim')
call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'master', 'build': 'yarn install --frozen-lockfile' })

call dein#add('Shougo/vimfiler')
call dein#add('Shougo/unite.vim')
call dein#add('thinca/vim-quickrun')
call dein#add('Shougo/vimproc.vim', {'build': 'make', 'on_i': 1})
call dein#add('osyo-manga/shabadou.vim')
call dein#add('osyo-manga/vim-watchdogs')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('scrooloose/syntastic')
call dein#add('Yggdroot/indentLine')
call dein#add('sjl/gundo.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('mattn/ctrlp-matchfuzzy')
call dein#add('pmsorhaindo/syntastic-local-eslint.vim')
call dein#add('cohama/lexima.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('airblade/vim-gitgutter')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('autowitch/hive.vim', {'on_ft': 'hive'})
call dein#add('elzr/vim-json', {'on_i': 1, 'on_ft': 'json'})
call dein#add('joshdick/onedark.vim')
call dein#add('tomasr/molokai')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('rhysd/accelerated-jk')
" call dein#add('rking/ag.vim')
call dein#add('tyru/current-func-info.vim')
call dein#add('StanAngeloff/php.vim')
call dein#add('thinca/vim-ref')
call dein#add('AndrewRadev/splitjoin.vim')
call dein#add('stephpy/vim-php-cs-fixer')
call dein#add('h1mesuke/vim-alignta')
call dein#add('vim-scripts/taglist.vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
set shell=/bin/zsh
set mouse=a
set clipboard+=unnamed
colorscheme onedark

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

let g:php_baselib       = 1
let g:php_htmlInStrings = 1
let g:php_noShortTags   = 1
let g:php_sql_query     = 1
let g:sql_type_default = 'mysql'
let g:vim_markdown_folding_disabled = 1

set notitle
set shortmess+=I
set ttyfast
set autoread
set nobackup
set noswapfile
" set showmatch
set matchtime=1
set matchpairs& matchpairs+=<:>
set hlsearch
set nocompatible
set backspace=indent,eol,start
set ruler

set display=lastline
set pumheight=10

let loaded_matchparen=1

" vimshell setting
let g:vimshell_interactive_update_time = 10
" Powerline
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown

set pastetoggle=<F10>
"nnoremap <F5> :GundoToggle<CR>
set foldmethod=marker
let g:netrw_liststyle=3
set scrolloff=5
set expandtab
set autoindent
set ts=4 sw=4 sts=4
set cindent
set laststatus=2
set noshowmode
set smartindent

set whichwrap=b,s,h,l,<,>,[,],~
" set incsearch
set ignorecase
set smartcase

"-------キー設定-------
""矢印キーでは表示行単位で行移動する
nmap <UP> gk
nmap <DOWN> gj
vmap <UP> gk
vmap <DOWN> gj

set filetype=hive

let mapleader=","

nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <Leader>sudo :w !sudo tee %<CR>
map <Leader>ee  :e ++enc=euc-jp<CR>
map <Leader>eu  :e ++enc=utf8<CR>
map <Leader>ss  :set number<CR>
map <Leader>nn  :set nonumber<CR>
map <L eader>s gS
map <Leader>j  gJ
" カーソル下のURLや単語をブラウザで開く
nmap <Leader>b <Plug>(openbrowser-smart-search)
vmap <Leader>b <Plug>(openbrowser-smart-search)

" colorscheme
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"let g:hybrid_use_Xresources = 1
let g:onedark_termcolors=256
if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

let g:unite_enable_start_insert = 1
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
" vimshell map
nnoremap <silent> vs :VimShell<CR>
nnoremap <silent> vsc :VimShellCreate<CR>
nnoremap <silent> vp :VimShellPop<CR>

" ctags
nnoremap <silent> <F5> :Tlist<CR>
set tags& tags+=./tags;

" toggle <sp>ell
nnoremap <silent> <Space>sp :<C-u>setlocal spell! spelllang=en_us<CR>:setlocal spell?<CR>
" }}}

" {{{ fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '~40%' }
nnoremap <C-p> :GFiles<CR>
nnoremap <C-a> :Ag<CR>
nnoremap <C-o> :History<CR>
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <C-g> :GGrep<CR>
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
"}}}

" {{{
" 構文エラー行に「>>」を表示
let g:syntastic_enable_signs = 1
" 他のVimプラグインと競合するのを防ぐ
let g:syntastic_always_populate_loc_list = 1
" 構文エラーリストを表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時に構文エラーチェックを実行する
let g:syntastic_check_on_open = 1
" 「:wq」で終了する時も構文エラーチェックする
let g:syntastic_check_on_wq = 1

" Javascript用. 構文エラーチェックにESLintを使用
let g:syntastic_javascript_checkers=['eslint']

let g:ctrlp_match_func = {'match': 'ctrlp_matchfuzzy#matcher'}

" let g:ctrlp_match_window = 'order:ttb,min:20,max:20,results:100' " マッチウインドウの設定. 「下部に表示, 大きさ20行で固定, 検索結果100件」
" let g:ctrlp_show_hidden = 1 " .(ドット)から始まるファイルも検索対象にする
" let g:ctrlp_types = ['fil'] "ファイル検索のみ使用
" let g:ctrlp_extensions = ['funky', 'commandline']
" " CtrlPCommandLineの有効化
" command! CtrlPCommandLine call ctrlp#init(ctrlp#commandline#id())
" " CtrlPFunkyの絞り込み検索設定
" let g:ctrlp_funky_matchtype = 'path'
" 
" if executable('ag')
"   let g:ctrlp_use_caching=0
"   let g:ctrlp_user_command='ag %s -i --hidden -g ""' " 「ag」の検索設定
" endif

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
" }}}

" lightline {{{

let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ 'mode_map': { 'c': 'NORMAL' },
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
	\ },
	\ 'component_function': {
	\   'modified': 'LightlineModified',
	\   'readonly': 'LightlineReadonly',
	\   'fugitive': 'LightlineFugitive',
	\   'filename': 'LightlineFilename',
	\   'fileformat': 'LightlineFileformat',
	\   'filetype': 'LightlineFiletype',
	\   'fileencoding': 'LightlineFileencoding',
	\   'mode': 'LightlineMode',
	\ },
	\ 'separator': { 'left': "", 'right': "" },
	\ 'subseparator': { 'left': "", 'right': "" }
	\ }
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? "\ue0a2" : ''
endfunction

function! LightlineFilename()
  let fname = expand('%')
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != fname ? fname : '[No Name]')) .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
"}}}

" NERDTree {{{
let NERDTreeShowHidden = 1
nnoremap <silent><C-e> :NERDTree<CR>
"}}}

" {{{ neocomplcache
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" }}}

" {{{ 文字コードの自動認識
if has('unix')
    set fileformat=unix
    set fileformats=unix,dos,mac
    set fileencoding=utf-8
    set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
    set termencoding=
elseif has('win32')
    set fileformat=dos
    set fileformats=dos,unix,mac
    set fileencoding=utf-8
    set fileencodings=iso-2022-jp,utf-8,euc-jp,cp932
    set termencoding=
endif
" }}}
