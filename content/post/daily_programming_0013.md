---
title: "Daily Programming #0013"
date: 2018-05-18T00:24:10+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][1]の#11をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][2]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

[2]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt

# 11. タブをスペースに置換 [Golang]

## Question

タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．

## Code

[100knock #11][3]

[3]:https://glot.io/snippets/f10m0nsgm4

<iframe src='https://glot.io/snippets/f10m0nsgm4/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

`strings.Replace`で一行ずつタブ文字をスペースに変換した。

確認にはsedコマンドを使用した。
