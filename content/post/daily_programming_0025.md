---
title: "Daily programming #0025"
date: 2018-05-30T01:08:24+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#23をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 23. セクション構造[Golang]

## Question

記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．

## Code

[100knock #23][snipet]

<iframe src='https://glot.io/snippets/f1gppy4av1/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>


やることは[#22][22]とあまり変わらない。

正規表現`==+(.+?)==+`でセクションの行にマッチさせ`=の数/2-1`をセクションのレベルとして表示した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1gppy4av1
[22]:https://re3turn.github.io/blog/post/daily_programming_0024/