---
title: "Daily programming #0032"
date: 2018-06-06T00:01:49+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#30をやっていく。

# 第4章: 形態素解析の前提

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をMeCabを使って形態素解析し，その結果をneko.txt.mecabというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

なお，問題37, 38, 39は[matplotlib](https://matplotlib.org/)もしくは[Gnuplot](http://www.gnuplot.info/)を用いるとよい．

[このあたり][mecab]の記述を参考にMeCab、およびmecab-ipadic-NEologdをインストールし、neko.txt.mecabを作成する。

neko.txt.mecabのサイズが大きいためglot.ioではそのまま実行できないため、第4章は実行結果を記載する方針とする。

# 30. 形態素解析結果の読み込み[Golang]

## Question

形態素解析結果（neko.txt.mecab）を読み込むプログラムを実装せよ．ただし，各形態素は表層形（surface），基本形（base），品詞（pos），品詞細分類1（pos1）をキーとするマッピング型に格納し，1文を形態素（マッピング型）のリストとして表現せよ．第4章の残りの問題では，ここで作ったプログラムを活用せよ．

## Code

[100knock #30][snipet]

<iframe src='https://glot.io/snippets/f1r2axfpxf/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.mecab 
[map[surface:名前 base:名前 pos:名詞 pos1:一般] map[surface:は base:は pos:助詞 pos1:係助詞] map[surface:まだ base:まだ pos:副詞 pos1:助詞類接続] map[pos:形容詞 pos1:自立 surface:無い base:無い] map[pos:記号 pos1:句点 surface:。 base:。]]
```

例として`名前はまだ無い`の形態素解析結果を出力した。

## Comment

[先人](http://cipepser.hatenablog.com/entry/2017/04/22/105647)のコードを参考にした。

mecabが生成する形態素解析結果は以下の(原型=基本形)順になっている。[^1]

[^1]: [統計的テキスト解析(3)～形態素と構文解析～](https://www1.doshisha.ac.jp/~mjin/R/58/58.html)

```:text
表層形\t品詞,品詞細分類1,品詞細分類2,品詞細分類3,活用型,活用形,原形,読み,発音
```

これを分割してmapに格納した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch4
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f1r2axfpxf
[mecab]:https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md