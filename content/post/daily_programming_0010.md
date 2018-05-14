---
title: "Daily Programming #0010"
date: 2018-05-15T02:23:20+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][1]の#08をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch1

# 08. 暗号文 [Golang]

## Question

与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．

 - 英小文字ならば(219 - 文字コード)の文字に置換
 - その他の文字はそのまま出力

この関数を用い，英語のメッセージを暗号化・復号化せよ．

## Code

<iframe src='https://glot.io/snippets/f106xm1m29/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

これは[アトバシュ暗号][2]なので同一関数で暗号化・復号化できる。

英語メッセージの指定が無いためアトバシュ暗号の[英語版Wikipedia][2]記事の文章を使用した。

[2]:https://en.wikipedia.org/wiki/Atbash
