---
title: "Daily programming #0034"
date: 2018-06-08T01:00:36+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#32をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 32. 動詞の原形[Golang]

## Question

動詞の原形をすべて抽出せよ．

## Code

[100knock #32][snipet]

<iframe src='https://glot.io/snippets/f1rnc1mrvt/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.mecab
[見当 記憶 そうだ 話 装飾 突起 運転 記憶 ようやく 分別]
```

出力結果は大量に出力されるため、例として最初から10個分を出力した。

## Comment

[#31][31]とあまりかわらない。

1文ごとになどの指定はないので1つのスライスに格納した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f1rnc1mrvt
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md
[31]:https://re3turn.github.io/blog/post/daily_programming_0033/
