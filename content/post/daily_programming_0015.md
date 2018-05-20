---
title: "Daily Programming #0015"
date: 2018-05-20T22:21:12+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#13をやっていく。

# 第2章: UNIXコマンドの基礎の前提

[hightemp.txt][inputfile]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 13. col1.txtとcol2.txtをマージ [Golang]

## Question

[12][question12]で作ったcol1.txtとcol2.txtを結合し，元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．確認にはpasteコマンドを用いよ．

## Code

[100knock #13][snipet]

<iframe src='https://glot.io/snippets/f17nmn3fmz/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

col1.txtとcol2.txtが同じ行数であることを前提に作成した。
pasteコマンドと同じように2つの入力ファイルが異なる行数になることも許容する場合はもう少し複雑になる。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
[snipet]:https://glot.io/snippets/f17nmn3fmz
[question12]:https://re3turn.github.io/blog/post/daily_programming_0014/
