---
title: "Daily programming #0022"
date: 2018-05-27T23:53:58+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
comments : true
---

[言語処理100本ノック 2015][100knock]の#20をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 20. JSONデータの読み込み [Golang]

## Question

Wikipedia記事のJSONファイルを読み込み，「イギリス」に関する記事本文を表示せよ．問題21-29では，ここで抽出した記事本文に対して実行せよ．

## Code

[100knock #20][snipet]

<iframe src='https://glot.io/snippets/f1fj0nljie/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>


`json.Unmarshal`で処理すれば簡単でしょと思って書いて、実行したら`invalid character '{' after top-level value`がでるし、
JSONだと1行分の長さが長すぎて`bufio.Scanner`が途中で読み込みやめてしまうしいろいろ気づきがある問題だった。

上記問題で参考にしたのは以下の記事


 - [golangのjson.Unmarshal()にはきっちりバイト数分のスライス渡さないと怒られる][twitter]

 - [Goのbufio.Scannerは入力データの1行の長さが一定以上になるとスキャンをやめてしまう][ref]

結局[先人の解答][ref2]をほぼそのまま丸写しする形になった。


[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1fj0nljie
[twitter]:https://twitter.com/fullphong/status/99861488315006976
[ref]:http://mickey24.hatenablog.com/entry/bufio_scanner_line_length
[ref2]:http://cipepser.hatenablog.com/entry/2017/03/17/231556
