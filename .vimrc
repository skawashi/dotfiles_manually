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

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

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

""" テーマ設定 """
syntax enable
set background=dark
colorscheme solarized

""" エンコード設定 """
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,ucs-bom,sjis,euc-jp,cp932,default,latin1
set fileformats=unix,dos,mac

""" 検索設定 """
set ignorecase "検索時に大文字小文字を区別しない
set incsearch	"インクリメント検索(最初の文字が入力された時点で検索開始)
set smartcase "検索時に大文字と小文字が含まれている場合、それぞれ区別する
set wrapscan "最後まで検索したら最初の行へ
set hlsearch "検索にマッチするテキストをハイライト

""" 基本設定 """
set number	"行番号の表示
" set noswapfile	"スワップファイルを作成しない
set cursorline	"カーソルがある行番号を強調
set whichwrap=b,s,h,l,<,>,[,],~	"行を跨いで移動できるようにする
set backspace=indent,eol,start "バックスペースでインデントや改行を削除可
set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed
set laststatus=2 "常にステータス行を表示
set showcmd "コマンドをステータス行に表示
set noshowmode "モード非表示
if has('persistent_undo')
  set undodir=~/.vim/undo "アンドゥファイルの保存先
  set undofile
endif
" set ruler "カーソルが何行何列にあるかを表示する


""" 編集設定 """
set tabstop=4 "タブの半角スペース数
set expandtab "タブを入力するとスペースを入力
set showmatch "括弧入力時に対応する括弧を表示
set autoindent "改行した時、インデントを同じレベルにする
