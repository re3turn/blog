---
title: "Daily Programming #0004"
date: 2018-05-09T03:28:47+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][1]の#02をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch1

# 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」 [Golang]

## Question

「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ

## Code

<iframe src='https://glot.io/snippets/f0uopsprkg/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

2つの文字列の長さが違う場合を考慮してこんな形にしてみた。

[ここ][2]の回答にあるみたいに`string`に追加していくのとスライスを予め作って追加していくのだとどちらがいいのだろうか？

[2]:https://qiita.com/yukitomo/items/2e6be0f26905d8e3dd22#02-%E3%83%91%E3%83%88%E3%82%AB%E3%83%BC%E3%82%BF%E3%82%AF%E3%82%B7%E3%83%BC%E3%83%91%E3%82%BF%E3%83%88%E3%82%AF%E3%82%AB%E3%82%B7%E3%83%BC%E3%83%BC
