---
title: "Daily Programming #0012"
date: 2018-05-17T23:39:04+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---


[言語処理100本ノック 2015][1]の#10をやっていく。

[1]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch2

**第2章: UNIXコマンドの基礎**

[hightemp.txt][2]は，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

[2]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt

# 10. 行数のカウント[Golang]

## Question

行数をカウントせよ．確認にはwcコマンドを用いよ．

## Code

<iframe src='https://glot.io/snippets/f10hkcmcm2/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

glot.ioはDocker上で実行されていてファイルをダウロードすることはできないため、[hightemp.txt][2]は以下の手順で実行環境に反映している。

- hightemp.txtファイルの内容を標準入力欄にコピペ
- catコマンドで標準入力の内容を読み込みファイルにリダイレクト

今後良く使いそうなので、ファイル読み書き用のパッケージを作成した。
glot.ioで複数ファイルに分けてコンパイルする方法については、Qiitaにまとめたので以下を参照してください。

[glot.io上でGo言語を複数ファイルでコンパイル][3]

[3]:https://qiita.com/re3turn/items/1947980d26b84ebfee40
