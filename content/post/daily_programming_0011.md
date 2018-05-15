---
title: "Daily Programming #0011"
date: 2018-05-16T03:16:35+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][1]の#09をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch1

# 09. Typoglycemia[Golang]

## Question

スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ．ただし，長さが４以下の単語は並び替えないこととする．適当な英語の文（例えば"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."）を与え，その実行結果を確認せよ．

## Code

<iframe src='https://glot.io/snippets/f107yoswu2/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

ランダムに並べ替えるアルゴリズムは、[**Fisher–Yates shuffle**][2]を使用した。

これでひとまず言語処理100本ノック 2015 第1章: 準備運動が終わった。

Goは文字列操作が簡単にできるのでどの問題も比較的簡単に書けた。

[2]:https://qiita.com/sugyan/items/fd7138a756c1a409f5fd
