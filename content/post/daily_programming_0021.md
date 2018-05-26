---
title: "Daily programming #0021"
date: 2018-05-26T22:47:11+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#19をやっていく。

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][inputfile]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 18. 各行を3コラム目の数値の降順にソート [Golang]

## Question

各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．確認にはcut, uniq, sortコマンドを用いよ．

## Code

[100knock #19][snipet]

<iframe src='https://glot.io/snippets/f19ft5aej7/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

割と力技で解いている気がするが、`map`で重複要素をカウントして出てきた順番どおりに出現頻度と文字列をスライスに出力。

あとはそれを`sort.SliceStable`でソートして出力した。

コマンドの結果と違っているけど、問題は出現頻度の高い順に並べろだから、文字列の順列は関係ないと思うんだけどなー。

第2章はこれで終わり。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
[snipet]:https://glot.io/snippets/f19ft5aej7
