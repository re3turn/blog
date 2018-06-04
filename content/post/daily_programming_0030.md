---
title: "Daily programming #0030"
date: 2018-06-04T03:22:09Z
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#28をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 28. MediaWikiマークアップの除去[Golang]

## Question

[27][27]の処理に加えて，テンプレートの値からMediaWikiマークアップを可能な限り除去し，国の基本情報を整形せよ．

## Code

[100knock #28][snipet]

<iframe src='https://glot.io/snippets/f1nmlah0df/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

[27][27]の処理に加えて[マークアップ早見表][markup]から以下を正規表現で除去した。

 - 外部リンク
 - コメントアウト

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1nmlah0df
[27]:https://re3turn.github.io/blog/post/daily_programming_0029/
[markup]:https://ja.wikipedia.org/wiki/Help:%E6%97%A9%E8%A6%8B%E8%A1%A8
