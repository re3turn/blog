---
title: "Daily Programming #0007"
date: 2018-05-12T00:22:42+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][1]の#05をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch1

# 05. n-gram [Golang]

## Question

与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．

### n-gramとは？

> 「N文字インデックス法」「Nグラム法」などともいう。検索対象を単語単位ではなく文字単位で分解し、後続の N-1 文字を含めた状態で出現頻度を求める方法。Nの値が1なら「ユニグラム（英: uni-gram）」、2なら「バイグラム（英: bi-gram）」、3なら「トライグラム（英: tri-gram）」と呼ばれる。[出典: Wikipedia](https://ja.wikipedia.org/wiki/%E5%85%A8%E6%96%87%E6%A4%9C%E7%B4%A2 "by Wikipedia")

## Code

<iframe src='https://glot.io/snippets/f0w713x1xo/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

スライスをそのまま出力するだけだとスペース含まれてる部分がちょっと見づらくなっちゃうな・・・
