---
title: "Daily Programming #0018"
date: 2018-05-23T22:51:39+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#16をやっていく。

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][inputfile]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 16. ファイルをN分割する [Golang]

## Question

自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．同様の処理をsplitコマンドで実現せよ．

## Code

[100knock #15][snipet]

<iframe src='https://glot.io/snippets/f18c6ic2du/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

コマンドラインから受けっ取った分割数分をファイルに書き込んでいく。

行数が分割数で割り切れない場合場合も端数をそのまま出力(splitコマンドの動作にあわせた)した。

書き込む要素が可変でもスライスで指定すれば問題ないので簡単だった。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
[snipet]:https://glot.io/snippets/f18c6ic2du
