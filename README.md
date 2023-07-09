## dotfiles

## 目的
- 環境構築を楽にする
- 自作のスクリプトを管理する
- 自作コマンドを管理する

## 構成
- .bin
    - 自作コマンド
    - path.sh
      - .bin配下のファイルをパス設定する
    - link.sh
        - .bin配下のファイルのシンボリックリンクを作成する
    - nvim
      - neo vimの設定
        - init.lua: neovimの最初に呼ばれるファイル
    - .vimrc: vimの設定
- config
    - 設定ファイル
- command
    - 自作スクリプト
- makefile
  - はじめに実行するコマンド群
- .github

## 初回
make

## Makefile
記法
```
<ターゲット>: <ソースファイル>
    [コマンド]
```

- ターゲット（生成物）
- ソースファイル（ターゲットを作る為に必要なファイル）
- コマンド （ターゲットを入力から作るためのコマンド）

## 動作
.bin配下のファイルのシンボリックリンクを作成
## 参考
https://dev.classmethod.jp/articles/joined-mac-dotfiles-customize/

https://qiita.com/saki-engineering/items/57956af61c191b0e3282

[参考: Neovim](https://zenn.dev/hisasann/articles/neovim-settings-to-lua)