---
title: "Daily programming #0037"
date: 2018-06-11T02:47:14+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#35をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 35. 名詞の連接[Golang]

## Question

名詞の連接（連続して出現する名詞）を最長一致で抽出せよ．

## Code

[100knock #35][snipet]

<iframe src='https://glot.io/snippets/f1s6jm43ya/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```bash
$ ./main ../neko.txt.mecab
[した所 人間中 一番獰悪 時妙 一毛 その後猫 一度 邸内 書生以外 四五遍]
```

出力結果は大量に出力されるため、例として最初から10個分を出力した。

## Comment

名詞が連続している間スライスに格納し、2つ以上連続していれば結合して保存用のスライスに格納していった。

今思えば結合せずにスライスごと格納したほうが後々使いやすい気がした。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f1s6jm43ya
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md
