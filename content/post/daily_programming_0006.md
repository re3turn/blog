---
title: "Daily Programming #0006"
date: 2018-05-11T01:15:57+09:00
subtitle: ""
tags: [Daily_Programming]
---

[言語処理100本ノック 2015][1]の#04をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch1

# 04. 元素記号 [Golang]

## Question

"Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can." という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

## Code

<iframe src='https://glot.io/snippets/f0v814m634/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

実行結果で`Mg`になるはずのところが`Mi`になっているがこれはもともとこういう仕様らしい(該当箇所は`Might`なのでこの問題の解答的には間違いではない)。
