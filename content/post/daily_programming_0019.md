---
title: "Daily programming #0019"
date: 2018-05-24T03:03:30+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#17をやっていく。

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][inputfile]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 17. １列目の文字列の異なり [Golang]

## Question

1列目の文字列の種類（異なる文字列の集合）を求めよ．確認にはsort, uniqコマンドを用いよ

## Code

[100knock #17][snipet]

<iframe src='https://glot.io/snippets/f18wn9ee54/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

一旦ソートして、一つ前の文字列と違えばユニークな文字列とするようにした

これだとちょっとしっくり来なかったのでちょっと調べてみた。

[sliceの重複チェックを高速化][Qiita]

スライスの重複を削除するのはmapを使うとよいということがわかったので書き直した。


[100knock #17-2][snipet2]

<iframe src='https://glot.io/snippets/f18wrbslcn/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
[snipet]:https://glot.io/snippets/f18wn9ee54
[snipet2]:https://glot.io/snippets/f18wrbslcn
[Qiita]:https://qiita.com/hi-nakamura/items/5671eae147ffa68c4466
