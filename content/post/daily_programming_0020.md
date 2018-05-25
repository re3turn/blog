---
title: "Daily programming #0020"
date: 2018-05-25T03:29:33Z
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#18をやっていく。

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][inputfile]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 18. 各行を3コラム目の数値の降順にソート [Golang]

## Question

各行を3コラム目の数値の逆順で整列せよ（注意: 各行の内容は変更せずに並び替えよ）．確認にはsortコマンドを用いよ（この問題はコマンドで実行した時の結果と合わなくてもよい）．

## Code

[100knock #18][snipet]

<iframe src='https://glot.io/snippets/f19b11ta42/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

各行をタブで区切って２次元のスライスに格納。

それを`sort.SliceStable`により3カラム目の値でソートして出力する。

`sort.SliceStable`は安定ソートなので、コマンドの結果と一致している感じ。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
[snipet]:https://glot.io/snippets/f19b11ta42
