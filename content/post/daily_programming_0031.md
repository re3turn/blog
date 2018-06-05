---
title: "Daily programming #0031"
date: 2018-06-05T23:56:07+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#29をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 29. 国旗画像のURLを取得する[Golang]

## Question

テンプレートの内容を利用し，国旗画像のURLを取得せよ．（ヒント: [MediaWiki API](https://www.mediawiki.org/wiki/API:Main_page/ja)の[imageinfo](https://www.mediawiki.org/wiki/API:Properties/ja#imageinfo_.2F_ii)を呼び出して，ファイル参照をURLに変換すればよい）

## Code

[100knock #29][snipet]

<iframe src='https://glot.io/snippets/f1p2k38rpf/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

GoでAPI叩いてクエリを取得した。

取得したクエリをパースするのが面倒なのと3章は正規表現の問題なので最終的に正規表現でURLを取得した。

第3章はこれで終わり。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1p2k38rpf
