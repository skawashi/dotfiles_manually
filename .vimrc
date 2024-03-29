""""""""""""""""""""""""""""""""""""""""
" Plugin Manager
""""""""""""""""""""""""""""""""""""""""
""" 参考ページ https://knowledge.sakura.ad.jp/23248/ """

" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'
  " let s:toml_lazy = s:toml_dir . '/dein_lazy.toml' "遅延ロード用ファイル

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})
  " call dein#load_toml(s:toml_toml, {'lazy': 1}) "遅延ロード用
  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" 偶に :call dein#update() でアップデートをする

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}


""""""""""""""""""""""""""""""""""""""""
" エディタ設定
""""""""""""""""""""""""""""""""""""""""

""" shell設定
set shell=/bin/zsh

""" テーマ設定
syntax enable
set background=dark
colorscheme solarized
" hi Comment ctermfg=14 "コメントアウトの文字色設定

""" エンコード設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,ucs-bom,sjis,euc-jp,cp932,default,latin1
set fileformats=unix,dos,mac

""" ビジュアル設定
set number	"行番号の表示
set cursorline	"カーソルがある行番号を強調
set laststatus=2 "常にステータス行を表示
set showcmd "コマンドをステータス行に表示
" set ruler "カーソルが何行何列にあるかを表示する
set noshowmode "モード非表示
set showmatch "括弧入力時に対応する括弧を表示

""" 検索設定
set ignorecase "検索時に大文字小文字を区別しない
set incsearch	"インクリメント検索(最初の文字が入力された時点で検索開始)
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
" set noswapfile	"スワップファイルを作成しない
set whichwrap=b,s,h,l,<,>,[,],~	"行を跨いで移動できるようにする
set backspace=indent,eol,start "バックスペースでインデントや改行を削除可
set mouse=a "マウスの有効化 a:常に n:ノーマル i:インサート v:ビジュアル c:コマンド
set ttymouse=xterm2
set clipboard+=unnamed "vimでコピーしたものをクリップボードに保存
if has('persistent_undo')
  set undodir=~/.vim/undo "Undoファイルの保存先
  set undofile
endif

""" キーマップ変更
" Insert Mode時、素早くjj入力でESC
inoremap <silent> jj <ESC>

""""""""""""""""""""""""""""""""""""""""
" coc.nvim setting
""""""""""""""""""""""""""""""""""""""""
set completeopt=menuone,noinsert
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
" set signcolumn=yes

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()
