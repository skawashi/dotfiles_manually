" ##############################################
" # editor setting
" ##############################################

""" shell設定
set shell=/bin/zsh

""" テーマ設定
syntax enable
colorscheme solarized
" set background=light
set background=dark
" hi Comment ctermfg=black "コメントアウトの文字色設定

""" エンコード設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,ucs-bom,sjis,euc-jp,cp932,default,latin1
set fileformats=unix,dos,mac

""" ビジュアル設定
set number	"行番号の表示
set cursorline	"カーソルがある行番号を強調
highlight cursorline cterm=underline ctermfg=NONE ctermbg=NONE "カーソルラインをハイライトからアンダーラインに変更
set signcolumn=yes "サイン列の表示
highlight clear SignColumn "サイン列の色をクリアに
set laststatus=2 "常にステータス行を表示
set cmdheight=2 "ステータスライン下の行数設定"
set showcmd "コマンドをステータス行に表示
" set ruler "カーソルが何行何列にあるかを表示する
set noshowmode "モード非表示
set showmatch "括弧入力時に対応する括弧を表示

""" 検索設定
set ignorecase "検索時に大文字小文字を区別しない
set incsearch "インクリメント検索(最初の文字が入力された時点で検索開始)
set smartcase "検索時に大文字と小文字が含まれている場合、それぞれ区別する
set wrapscan "最後まで検索したら最初の行へ
set hlsearch "検索にマッチするテキストをハイライト

""" 基本設定
set helplang=ja "ヘルプの日本語化用
set ttimeoutlen=10 "escapeでノーマルモードへ移行するまでの時間
set shiftwidth=4 "
set tabstop=4 "タブの半角スペース数
set expandtab "タブを入力するとスペースを入力
set autoindent "改行した時、インデントを同じレベルにする
set smartindent "{で改行すると自動でインデントされる
" set noswapfile	"スワップファイルを作成しない
set whichwrap=b,s,h,l,<,>,[,],~	"行を跨いで移動できるようにする
set backspace=indent,eol,start "バックスペースでインデントや改行を削除可
set mouse=a "マウスの有効化 a:常に n:ノーマル i:インサート v:ビジュアル c:コマンド
set clipboard+=unnamed "vimでコピーしたものをクリップボードに保存
if has('persistent_undo')
  set undodir=~/.config/nvim/undo "Undoファイルの保存先
  set undofile
endif

""" ファイルタイプ
if has('autocmd')
  filetype plugin indent on
  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtabの略
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
endif

""" キーマップ変更
inoremap <silent> jj <ESC>

" ##############################################
" # plugin install
" ##############################################
" :PlugInstall  このファイルに記述があり、まだインストールされていないプラグインをインストール
" :PlugClean    このファイルから無くなったプラグインを削除
call plug#begin() "以下にプラグインのurlを記述

" filer plugin
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'yuki-yano/fern-preview.vim'

" fzf plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" git plugin
" git差分の表示
Plug 'airblade/vim-gitgutter'

" Plug 'sheerun/vim-polyglot'

" status line plugin
Plug 'itchyny/lightline.vim'

" themes colors plugin
Plug 'altercation/vim-colors-solarized'

" LSP plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jwalton512/vim-blade'

" help 日本語化 plugin
Plug 'vim-jp/vimdoc-ja'
Plug 'edkolev/promptline.vim'
" Plug 'nvim-treesitter/nvim-treesitter', { 'merged': 0 }

" ノーマルモードへ戻る場合にIMEをオフ
Plug 'yoshida-m-3/vim-im-select'

" indent line plugin
Plug 'Yggdroot/indentLine'

" space highlight plugin
Plug 'ntpeters/vim-better-whitespace'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" matchit.vimを有効化(vimのデフォルトプラグイン)
packadd! matchit

" ##############################################
" # plugin setting
" ##############################################

""" Fern plugin setting
" ファイルツリー表示時、pを押すと詳細表示
" Ctr + p で常時詳細表示
" 詳細表示時、Ctr + u で上、 Ctr + d で下へ
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

" 隠しファイルを表示する
let g:fern#default_hidden=1

" Ctr + n でファイルツリーを表示/非表示
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>

""" vim-gitgutter https://github.com/airblade/vim-gitgutter
let g:gitgutter_highlight_lines = 1
let g:gitgutter_sign_added = '●'
let g:gitgutter_sign_modified= '●'
let g:gitgutter_sign_removed= '●'

""" vim-lightline
let g:lightline = { 'colorscheme': 'PaperColor' }

""" vim-im-select
let g:im_select_default = 'com.apple.keylayout.ABC'

""" indentLine
let g:indentLine_char_list = ['▏', '▏', '▏', '▏']

""" vim-better-whitespace
" let g:strip_whitespace_on_save=1

"""  coc.nvim setting
set completeopt=menuone,noinsert
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
" "Enterで改行yされないようにする(Enterがバグるのでコメントアウト中)
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" floating windowの透明度(ウインドウのしたのコードが透けるため、違和感があるかも)
" set pumblend=5

