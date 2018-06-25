---
title: "Daily programming #0040"
date: 2018-06-26T00:51:37+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#38をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 38. ヒストグラム[Golang]

## Question

単語の出現頻度のヒストグラム（横軸に出現頻度，縦軸に出現頻度をとる単語の種類数を棒グラフで表したもの）を描け．

## Code

[100knock #38][snipet]

<iframe src='https://glot.io/snippets/f27534jhfm/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

{{< figure src="/blog/images/golang/38_hist.png" >}}

階級幅20で出力しているが単語の出現頻度の大部分が1〜50回あたりなので分かりづらいグラフになっている。

{{< figure src="/blog/images/golang/38_hist2.png" >}}

思い切って出現頻度100回以下の単語を除外してみたが少しはヒストグラムらしいグラフになった。

## Comment

問題の意図が読み取れなくて難儀した。

日本語は難しい。

形態素解析が細かすぎるのかこれをヒストグラムにする意味はあるのだろうかと思いながらコード書いてました。

[Gonum Plot][Gonum Plot]、ヒストグラムには`plotutil.Color`効かないんですかね？

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f27534jhfm
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md
[Gonum Plot]:https://github.com/gonum/plot
