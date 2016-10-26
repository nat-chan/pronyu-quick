#pronyu-quick
![splash](https://github.com/nat-chan/pronyu-quick/wiki/splash.png)

プログラミング入門でJava言語の課題を出されたとき、素早くはじめたいですね。
まだファイルが作成されてない状態でvim Hoge.javaと打つとHogeクラスのテンプレートが入力され、カーソルがmain関数のインデントに自動で移ります。
バッファへの書き込みなので、modifiedでないなら:qで普通に抜けられ、ファイルも作成されません

##Requirements
1. Vim (実体はVim scriptなのでどのような環境でも動くはず)

#How to install
##よくわからないんだが...て人は


##Vimmer向け
```vim
:call dein#update(["pronyu-quick"])
```
