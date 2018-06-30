---
title: "Daily programming #0044"
date: 2018-06-30T21:46:00+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#42をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 42. 係り元と係り先の文節の表示[Golang]

## Question

係り元の文節と係り先の文節のテキストをタブ区切り形式ですべて抽出せよ．ただし，句読点などの記号は出力しないようにせよ．

## Code

[100knock #42][snipet]

<iframe src='https://glot.io/snippets/f2guxdak54/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha
一
吾輩は猫である
名前は 無い
まだ  無い
無い
どこで 生れた
生れた かとんと
かとんと    つかぬ
見当が つかぬ
つかぬ
何でも 薄暗い
薄暗い 泣いて
じめじめ    泣いて
した所で    泣いて
ニャーニャー  泣いて
泣いて 記憶している
いた事だけは  記憶している
記憶している
吾輩は 見た
ここで 始めて
始めて 人間という
人間という   ものを
ものを 見た
見た

<以下省略>
```

## Comment

基本的には[#41][41]をベースに出力形式を変更しただけ

係り先の文節がない場合は、係り元の文節のみ出力した

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2guxdak54
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
[41]:https://re3turn.github.io/blog/post/daily_programming_0043/
