#pronyu-quick
![splash](https://github.com/nat-chan/pronyu-quick/wiki/splash50.png)

プログラミング入門でJava言語の課題を出されたとき、素早くはじめたいですね。  
まだファイルが作成されてない状態で`vim Hoge.java`と打つとHogeクラスのテンプレートが入力され、
カーソルがmain関数のインデントに自動で移ります。  
バッファへの書き込みなので、modifiedでないなら`:q`で普通に抜けられ、ファイルも作成されません。

##Requirements
1. Vim (実体はVim scriptなのでどのような環境でも動くはずです。)

##How to install
###Vimmer向け
パッケージマネージャにdein.vimを使っている人は次のようにインストールできます。
```vim:~/.vimrc
call dein#begin({path to plugin base path directory})
...
call dein#add('nat-chan/pronyu-quick')
...
call dein#end()
```
プラグイン名をTOMLファイルに分けている人は次のようにしてください
```toml:~/.vim/rc/dein.toml
[[plugins]]
repo = 'nat-chan/pronyu-quick'
```
アップデートは次のように出来ます。
```vim
:call dein#update(["pronyu-quick"])
```
まだNeoBundleを使ってる人は以下の通り
```vim:~/.vimrc
NeoBundle 'Shougo/unite.vim'
```

###よくわからないんだが...て人は
このリポジトリのftdetect/JavaTemplate.vimをあなたの環境の~/.vim/ftdetect/
にコピーするだけで動きます。  
ターミナルを開いて以下のコマンドを打ってください。
```bash
git clone https://github.com/nat-chan/pronyu-quick.git
mkdir -p ~/.vim/ftdetect/
cp pronyu-quick/ftdetect/JavaTemplate.vim ~/.vim/ftdetect/
rm -rf pronyu-quick
```
