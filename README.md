

~/Dropbox/lib/vim として `git clone` し，基本的な設定ファイルをホームディレクトリに複製して使っています．また、複数のパソコン間を使う環境下でややこしさを避けるために、`user/startup.vim`のなかで一時ファイルなどは Dropbox 以外の場所に保存する設定を施しているので、その設定を追加します。

```
cp Dropbox/lib/vim/user/initialize.vim $HOME/.vimrc
cp Dropbox/lib/vim/user/init_gui.vim   $HOME/.gvimrc

mkdir -p $HOME/.tmp/vim/{backup,undo}
```

プラグインごとの設定は user/&lt;plugin&gt;-rc.vimに設定すれば，自動的に読み込まれるようにしています．

-----
# パッケージの管理

Pathogen を用いています．Pathogen は startup.vim の最後に読み込んでいます．

- autoload/pathogen.vim

以下は Pathogen を用いて読み込んでいるパッケージ群です．ほとんどを vim/bundle の下に `git clone` しています。

- goyo.vim: 集中執筆モード (:Goyo)
- languagetool: 英文法チェックのためのパッケージ
- nerdtree: ディレクトリを木構造でブラウズするためのパッケージ
- vim-colors-solarized: Solarized風の彩色を施すツール
- vim-fswitch: maven流のディレクトリ構造のなかでソースとテストのファイルを簡単に行き来するために使っている．
- xptemplate: テンプレートマクロのためのパッケージだけれども，個人的にはまだ使ってない

## 各種言語ごとのパッケージ

- c-complete: C/C++ 向け編集補完機能。Clang を利用している。
- eclim: Eclipse のフロントエンド．Vim の軽さに Eclipse の賢さを加えることができる．でも，ほとんど使っていない．
- omlet-0.13: OCaml
- vim-glsl: OpenGL Shader Language
- vim-javascript
- Vim-R-plugin
- vim-scala

## 基盤パッケージ

- funcoo
- gundo: VimのUndo木を可視化する。なぜ、これをインストールしたのかわからない。
- IndentAnything: 言語固有のインデントシステムのための基盤
- vim-pathogen: インストールしたVimパッケージへのパス設定を自動化するツール
- vimproc.vim: 外部ツールを非同期的に呼び出すための基盤
- xptemplate: コードスニペット機能を支援する基盤

## 使わなくなった／使い熟せてないパッケージ

- ctrlp.vim: ファイルを素早く開くためのパッケージ。徐くん一押し。
- vimoutliner: アウトラインプロセッサだが使っていない
- vimshell.vim: Emacs の eshell 環境のようなシェルバッファを実現する
