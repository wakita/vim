~/Dropbox/lib/vim としてインストールし，以下のようにリンクを作成して使っています．

    ln -s Dropbox/lib/vim/user/initialize.vim .vimrc
    ln -s Dropbox/lib/vim/user/init_gui.vim .gvimrc

プラグインごとの設定は user/&lt;plugin&gt;-rc.vimに設定すれば，自動的に読み込まれるようにしています．

-----
パッケージの管理には Pathogen を用いています．Pathogen は startup.vim の最後に読み込んでいます．

- autoload/pathogen.vim

以下は Pathogen を用いて読み込んでいるパッケージ群です．いずれも vim/bundle の下に保存しています．

- LanguageTool: 英文法チェックのためのパッケージ
- ctrlp.vim: ファイルを素早く開くためのパッケージ
- dash: キーワードの上で `:dash` コマンドを打つと，Dash.app で APIマニュアルが開く．
- nerdtree: ディレクトリを木構造でブラウズするためのパッケージ
- vim-fswitch: maven流のディレクトリ構造のなかでソースとテストのファイルを簡単に行き来するために使っている．
- vimshell.vim: Emacs の eshell 環境のようなシェルバッファを実現する
- xptemplate: テンプレートマクロのためのパッケージだけれども，個人的にはまだ使ってない

以下は各種言語ごとのパッケージ

- coq
- eclim: Eclipse のフロントエンド．Vim の軽さに Eclipse の賢さを加えることができる．でも，ほとんど使っていない．
- omlet-0.13: OCaml
- vim-javascript
- vim-racket-master
- vim-scala
- vim-x10

基盤パッケージ
- funcoo
- IndentAnything: 言語固有のインデントシステムのための基盤
- vimproc.vim
