~/Dropbox/lib/vim としてインストールし，以下のようにリンクを作成して使っています．

    ln -s Dropbox/lib/vim/user/initialize.vim .vimrc
    ln -s Dropbox/lib/vim/user/init_gui.vim .gvimrc

プラグインごとの設定は user/&lt;plugin&gt;-rc.vimに設定すれば，自動的に読み込まれるようにしています．

-----
パッケージの管理には Pathogen を用いています．Pathogen は startup.vim の最後に読み込んでいます．

- autoload/pathogen.vim

以下は Pathogen を用いて読み込んでいるパッケージ群です．いずれも vim/bundle の下に保存しています．

- IndentAnything: 言語固有のインデントシステムのための基盤
- LanguageTool: 英文法チェックのためのパッケージ
- ctrlp.vim: ファイルを素早く開くためのパッケージ
- vim-fswitch: maven流のディレクトリ構造のなかでソースとテストのファイルを簡単に行き来するために使っている．
- nerdtree: ディレクトリを木構造でブラウズするためのパッケージ
- xptemplate: テンプレートマクロのためのパッケージだけれども，個人的にはまだ使ってない

以下は各種言語ごとのパッケージ

- coq
- eclim
- omlet-0.13
- vim-javascript
- vim-racket-master
- vim-scala
- vim-x10
