---
title: "Daily programming #0039"
date: 2018-06-25T00:55:53+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#37をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 37. 頻度上位10語[Golang]

## Question

出現頻度が高い10語とその出現頻度をグラフ（例えば棒グラフなど）で表示せよ．

## Code

[100knock #37][snipet]

<iframe src='https://glot.io/snippets/f24revpq57/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

{{< figure src="/blog/images/golang/37_bar.png" >}}

Gonum Plotは日本語非対応なので棒グラフのラベルは出力されない。

## Comment

しばらくできていなかったが今日から再開する。

[Gonum Plot][Gonum Plot]というグラフを描画するパッケージを使用した。

使用方法は公式のドキュメント及び[先人のコード][blog]を参考にした。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f24revpq57
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md
[Gonum Plot]:https://github.com/gonum/plot
[blog]:http://cipepser.hatenablog.com/entry/2017/04/22/105647
