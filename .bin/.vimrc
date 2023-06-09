"===== 表示設定 =====
set number "行番号の表示
set list "タブ、空白、改行を可視化
set title "編集中ファイル名の表示
set visualbell t_vb= "ビープ音を視覚表示
set laststatus=2 "ステータスを表示
set ruler "カーソル位置を表示
set ambiwidth=double "○や□などの文字が重ならないようにする
syntax on "コードに色をつける

"===== 文字、カーソル設定 =====
set fenc=utf-8 "文字コードを指定
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする
set backspace=indent,eol,start "バックスペースでの行移動を可能にする
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ "不可視文字の指定
set expandtab "タブをスペースに変換する
set autoindent "自動インデント
set smartindent "オートインデント
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする
set tabstop=4 "インデントをスペース4つ分に設定

"===== マウス設定 =====
"set mouse=a
set ttymouse=xterm2

"===== 検索設定 =====
set ignorecase "大文字、小文字の区別をしない
set smartcase "大文字が含まれている場合は区別する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索した文字を強調
set incsearch "インクリメンタルサーチを有効にする

"===== キー入力 =====
"jキーを二度押しでESCキー
inoremap <silent> jj <Esc>
inoremap <silent> っj <Esc>
" Move between windows
nnoremap <Return><Return> <c-w><c-w>
" ファイル保存と終了
nnoremap <Leader>w :w<CR>
" vimrcを開く
nnoremap <Leader>. :new ~/.vimrc<CR>
nnoremap <Leader>s :exe "source" expand("%")<CR>
" 行先頭と行末
noremap H ^
noremap L g_

"path
"vimrc反映後自動リロード
autocmd! bufwritepost $MYVIMRC source %

"===== その他 ====
"履歴を100件保存
set history=1000
set clipboard+=unnamed "コピーしたときはクリップボードを使用
set nobackup "バックアップファイルを作らない
set noswapfile "スワップファイルを作らない
set autoread "編集中のファイルが変更されたら、自動的に読み込み直す
set helplang=ja
set autowrite " 他のバッファに移動する時に自動保存
set clipboard=unnamedplus
