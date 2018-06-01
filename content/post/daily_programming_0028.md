---
title: "Daily programming #0028"
date: 2018-06-02T00:01:49+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#26をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 26. 強調マークアップの除去[Golang]

## Question

[25][25]の処理時に，テンプレートの値からMediaWikiの強調マークアップ（弱い強調，強調，強い強調のすべて）を除去してテキストに変換せよ（参考: [マークアップ早見表][markup]）．

## Code

[100knock #26][snipet]

<iframe src='https://glot.io/snippets/f1kzfjhtp0/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>


問題にある`弱い強調、強調、強い強調`は「言語処理100本ノック 2015」が出た当時からリンク先のWikipediaの記事が変わっており、それぞれ`他との区別（斜体）、強調（太字）、斜体と強調`のことらしい(2018/06/02現在)

正規表現`'{2,5}`で2〜5個の`’`をマッチさせて`regex.ReplaceAllString`で削除する。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1kzfjhtp0
[25]:https://re3turn.github.io/blog/post/daily_programming_0027/
[markup]:https://ja.wikipedia.org/wiki/Help:%E6%97%A9%E8%A6%8B%E8%A1%A8
