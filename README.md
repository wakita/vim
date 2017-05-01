# Vim の設定について

Vimの設定は普通は `~/.vim/` にパッケージをインストールし、`~/.vimrc` にユーザごとの設定を記述するものです。ただ、`~/.vimrc` にさまざまな設定が入り乱れてわかりにくかったり、設定を他のパソコンと共有しにくいなどの理由から、わたしは特殊な設定を施しています。基本的にはすべての設定ファイルを `~/Dropbox/lib/vim/` に保存しています。このディレクトリの構造は以下のようになっています。

| Files & Subdirectories | Purpose |
|:-----|:-----|
| README.md | このファイル |
| after/    | ほとんどの設定ファイルを読み込んだあとで実行したい内容（ほとんど使っていない） |
| bin/      | 保守のためのコマンド群 |
| bundle/   | `git clone` したパッケージ群。Vim のパスを設定する Pathogen というツールが管理してくれる |
| ftplugin/ | ファイルタイプ固有の設定（ほとんど使っていない） |
| user/     | 自分のカスタマイズ内容。設定の種別ごとにファイルに分割している |

本 Git repository には `bundle/` 以外の内容をコミットしてあります。自分で新しいパソコンを設定するときは、`~/Dropbox/lib/vim` として `git clone` したあとで、`bundle/` の下のリポジトリを `git clone` し、最後に `$HOME/{.vimrc,.gvimrc}` を以下の要領で作成して設定完了としています。

```
cp Dropbox/lib/vim/user/initialize.vim $HOME/.vimrc
cp Dropbox/lib/vim/user/init_gui.vim   $HOME/.gvimrc
```

複数のパソコン間で同時並行的に実施する編集活動に伴うややこしさを避けるために `user/startup.vim`のなかで一時ファイルなどは Dropbox 以外の場所に保存する設定を施しています。それに対応したディレクトリを追加します。

```
mkdir -p $HOME/.tmp/vim/{backup,undo}
```

プラグインごとの設定は `user/<plugin>-rc.vim` あるいは、`user/gui/<plugin>-rc.vim` に設定すれば，自動的に読み込まれるようにしています．なお、`user/gui/`はGUI版のVim (gvim や MacVim) のための設定です。`user/initialize.vim`や`user/gui/initialize.vim`のなかの`runtime!`命令を参照。

-----
# パッケージの管理

| Package Name     | 用途
|:-----------------|:------------------------------------------------------|
| 基盤 | |
| ★★[pathogen](https://github.com/tpope/vim-pathogen.git) | パッケージ管理。超重要 |
| ★[indentanything](https://github.com:vim-scripts/IndentAnything.git) | インデント機能の基盤 |
| [xptemplate](https://github.com/drmingdrmer/xptemplate.git) |
| [vimoutliner](https://github.com:vim-scripts/VimOutliner.git) | アウトラインプロセッサだが使っていない
| [vimproc](https://github.com/Shougo/vimproc.vim | 外部ツールを非同期的に呼び出すための基盤
| [funcoo](https://github.com/rizzatti/funcoo.vim.git) | 一部のパッケージがこれに依存している。
| 一般             | |
| [colors-solarized](https://github.com/altercation/vim-colors-solarized | カラースキームの設定 |
| ★[goyo](https://github.com/junegunn/goyo.vim.git) | 集中執筆モード (write-rc.vimで使用)
| ★[languagetool](https://github.com:vim-scripts/LanguageTool.git) | 英語構文検査 |
| ★★[nerdtree](https://github.com/scrooloose/nerdtree.git) | ファイルブラウザ |
| [ctrlp](https://github.com/kien/ctrlp.vim.git) | 使い熟していないけど、人気が高い |
| [gundo](https://github.com/sjl/gundo.vim.git) | Vimのアンドゥ木を可視化する。なぜインストールしたのかわからない。
| 言語設定         | 各種プログラミング言語のインデント、ハイライトなど |
| [clang_complete](https://github.com:Rip-Rip/clang_complete.git) | C/C++ |
| [fswitch](https://github.com/derekwyatt/vim-fswitch.git) | maven流のディレクトリ構造のなかでソースとテストのファイルを簡単に行き来． |
| [glsl](https://github.com/beyondmarc/glsl.vim.git) | OpenGL Shader Langauge |
| [javascript](https://github.com/pangloss/vim-javascript.git) | JavaScript |
| [omlet](https://github.com:vim-scripts/omlet.vim.git) | OCaml |
| [r-plugin](https://github.com:vim-scripts/Vim-R-plugin.git) | R |
| ★[scala](https://github.com/derekwyatt/vim-scala.git) | Scala |

Pathogen を用いています．Pathogen は startup.vim の最後に読み込んでいます．
