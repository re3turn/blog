---
title: "Daily programming #0038"
date: 2018-06-12T02:11:55+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#36をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 36. 単語の出現頻度[Golang]

## Question

文章中に出現する単語とその出現頻度を求め，出現頻度の高い順に並べよ．

## Code

[100knock #36][snipet]

<iframe src='https://glot.io/snippets/f1vhdpg93l/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```bash
$ ./main ../neko.txt.mecab
9107 の
7484 。
6772 、
6698 て
6384 は
6159 に
6068 を
5476 と
5259 が
3916 た
3775 で
```

出力結果は大量に出力されるため、例として最初から10個分を出力した。

## Comment

単語をすべて1つのスライスに格納し、[#19][19]とほぼ同様の手順で重複要素をカウントして、出現頻度と文字列をスライスに格納。

あとはそれを`sort.SliceStable`でソートして出力した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f1vhdpg93l
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md
[19]:https://re3turn.github.io/blog/post/daily_programming_0021/
