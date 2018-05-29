---
title: "Daily programming #0024"
date: 2018-05-29T02:29:44+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---


[言語処理100本ノック 2015][100knock]の#22をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 22. カテゴリ名の抽出[Golang]

## Question

記事のカテゴリ名を（行単位ではなく名前で）抽出せよ．

## Code

[100knock #22][snipet]

<iframe src='https://glot.io/snippets/f1gouqvt7u/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>


`regexp.FindAllStringSubmatch`でマッチ全体、部分一致したグループをスライスに格納して表示する。

スライスは[[マッチ全体, 1つ目のグループ、２つめのグループ、、], ...]のような形になっているので1番目のスライス(部分一致したカテゴリ名)を出力した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1gouqvt7u
