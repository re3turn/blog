---
title: "Daily programming #0029"
date: 2018-06-03T10:26:56+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#27をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 27. 内部リンクの除去[Golang]

## Question

[26][26]の処理に加えて，テンプレートの値からMediaWikiの内部リンクマークアップを除去し，テキストに変換せよ（参考: [マークアップ早見表][markup]）．．

## Code

[100knock #27][snipet]

<iframe src='https://glot.io/snippets/f1mkihytq9/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

 - [[記事名]]
 - [[記事名|表示文字]]
 - [[記事名#節名|表示文字]]

内部リンクのマークアップは上記の3種類。

他の人の解答をみると記事名を抜き出している解答があるが、今回は記事名のみの場合は記事名、表示文字がある場合は表示文字を抜き出す方針とした。

正規表現`\[{2}([^|\]]+?\|)*(.+?)\]{2}`で内部リンクにマッチさせ`regex.ReplaceAllString(str, "$2")`で記事名、または表示文字以外を削除する。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1mkihytq9
[26]:https://re3turn.github.io/blog/post/daily_programming_0028/
[markup]:https://ja.wikipedia.org/wiki/Help:%E6%97%A9%E8%A6%8B%E8%A1%A8
