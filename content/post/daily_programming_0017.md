---
title: "Daily Programming #0017"
date: 2018-05-22T00:17:11+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#15をやっていく。

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][inputfile]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 15. 末尾のN行を出力 [Golang]

## Question

自然数Nをコマンドライン引数などの手段で受け取り，入力のうち末尾のN行だけを表示せよ．確認にはtailコマンドを用いよ．

## Code

[100knock #15][snipet]

<iframe src='https://glot.io/snippets/f186n6hdk1/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

コマンドラインから自然数Nを受け取って、forで`要素数-N`個目の要素から末尾まで出力するだけ。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
[snipet]:https://glot.io/snippets/f186n6hdk1
