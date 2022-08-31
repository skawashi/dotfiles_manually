" :PlugInstall  まだインストールされていないプラグインをインストール
" :PlugClean    このファイルから無くなったプラグインを削除
call plug#begin() "以下にプラグインのurlを記述

" filer plugin
" Plug 'preservim/nerdtree'
" Plug 'Shougo/vimfiler.vim'
Plug 'lambdalisue/fern.vim'

" fzf plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" git plugin
" git差分の表示
Plug 'airblade/vim-gitgutter'

" Plug 'sheerun/vim-polyglot'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" status line plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" themes colors plugin
Plug 'altercation/vim-colors-solarized'

" LSP plugin
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" help 日本語化 plugin
Plug 'vim-jp/vimdoc-ja'
Plug 'edkolev/promptline.vim'
" Plug 'nvim-treesitter/nvim-treesitter', { 'merged': 0 }
Plug 'yoshida-m-3/vim-im-select'

call plug#end()

""" NERDTree """ https://github.com/preservim/nerdtree
" Start NERDTree when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

""" vim-gitgutter """ https://github.com/airblade/vim-gitgutter
 let g:gitgutter_highlight_lines = 1

""" vim-airline
" let g:airline#extensions#tabline#enabled = 1 "タブの表示設定
let g:airline_theme = 'papercolor' "テーマ設定

""" vimfiler
" let g:vimfiler_as_default_explorer = 1

""" vim-im-select
let g:im_select_default = 'com.apple.keylayout.ABC'

""""""""""""""""""""""""""""""""""""""""
" editor setting
""""""""""""""""""""""""""""""""""""""""

""" shell設定
set shell=/bin/zsh

""" テーマ設定
syntax enable
colorscheme solarized
set background=light
" set background=dark
" hi Comment ctermfg=black "コメントアウトの文字色設定


""" エンコード設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,ucs-bom,sjis,euc-jp,cp932,default,latin1
set fileformats=unix,dos,mac

""" ビジュアル設定
set number	"行番号の表示
set cursorline	"カーソルがある行番号を強調
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
" set ttymouse=xterm2
set clipboard+=unnamed "vimでコピーしたものをクリップボードに保存
if has('persistent_undo')
  set undodir=~/.config/nvim/undo "Undoファイルの保存先
  set undofile
endif

""" キーマップ変更
inoremap <silent> jj <ESC>

""""""""""""""""""""""""""""""""""""""""
" coc.nvim setting
""""""""""""""""""""""""""""""""""""""""
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
inoremap <silent><expr> <c-space> coc#refresh()
