---
title: "Daily programming #0041"
date: 2018-06-27T00:42:25+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#39をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 39. Zipfの法則[Golang]

## Question

単語の出現頻度順位を横軸，その出現頻度を縦軸として，両対数グラフをプロットせよ．

## Code

[100knock #39][snipet]

<iframe src='https://glot.io/snippets/f2cl0pd1f3/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

{{< figure src="/blog/images/golang/39_scatter.png" >}}

## Comment

[Zipfの法則][zipf law]とは？

なるほどわからん。

今までのコードを使えばとりあえずできそうだったので、[先人のコード][blog]や[公式のサンプル][sample]を参考にしつつ作成した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2cl0pd1f3
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md
[Gonum Plot]:https://github.com/gonum/plot
[blog]:http://cipepser.hatenablog.com/entry/2017/04/22/105647
[zipf law]:https://ja.wikipedia.org/wiki/%E3%82%B8%E3%83%83%E3%83%97%E3%81%AE%E6%B3%95%E5%89%87
[sample]:https://github.com/gonum/plot/wiki/Example-plots
