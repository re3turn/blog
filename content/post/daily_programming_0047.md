---
title: "Daily programming #0047"
date: 2018-07-03T23:25:53+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#45をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 45. 動詞の格パターンの抽出[Golang]

## Question

今回用いている文章をコーパスと見なし，日本語の述語が取りうる格を調査したい． 動詞を述語，動詞に係っている文節の助詞を格と考え，述語と格をタブ区切り形式で出力せよ．ただし，出力は以下の仕様を満たすようにせよ．

 - 動詞を含む文節において，最左の動詞の基本形を述語とする
 - 述語に係る助詞を格とする
 - 述語に係る助詞（文節）が複数あるときは，すべての助詞をスペース区切りで辞書順に並べる

「吾輩はここで始めて人間というものを見た」という例文（neko.txt.cabochaの8文目）を考える．この文は「始める」と「見る」の２つの動詞を含み，「始める」に係る文節は「ここで」，「見る」に係る文節は「吾輩は」と「ものを」と解析された場合は，次のような出力になるはずである．

```
始める  で
見る    は を
```

このプログラムの出力をファイルに保存し，以下の事項をUNIXコマンドを用いて確認せよ．

 - コーパス中で頻出する述語と格パターンの組み合わせ
 - 「する」「見る」「与える」という動詞の格パターン（コーパス中で出現頻度の高い順に並べよ）

## Code

[100knock #45][snipet]

<iframe src='https://glot.io/snippets/f2kaha2941/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha > output.txt
$ sort output.txt | uniq -c | sort -nr | head -10
    577 云う  と
    438 する  を
    255 思う  と
    200 なる  に
    197 ある  が
    187 する  に
    178 見る  て
    128 する  と
    119 する  が
     94 する  て を

$  grep "^する\s" output.txt | sort | uniq -c | sort -nr | head -10
    438 する  を
    187 する  に
    128 する  と
    119 する  が
     94 する  て を
     84 する  て
     62 する  を に
     59 する  は
     57 する  が を
     51 する  から

$ grep "^見る\s" output.txt | sort | uniq -c | sort -nr | head -10
    178 見る  て
     93 見る  を
     21 見る  て て
     19 見る  から
     15 見る  て を
     15 見る  と
     13 見る  で
     11 見る  は て
     10 見る  から て
      9 見る  に

$ grep "^与える\s" output.txt | sort | uniq -c | sort -nr | head -10
      3 与える に を
      1 与える けれども に を
      1 与える として を
      1 与える たり に を
      1 与える に に対して も
      1 与える で だけ を
      1 与える て は は と て に を
      1 与える は て に を に
      1 与える は て に を
      1 与える と は て を
```

結果は例として上位10個を表示した

## Comment

特に難しいことはない

動詞が含まれる文節、かつその文節の係り元文節に助詞が含まれるものを抽出するだけ

先人の人達の結果を見るとそれぞれ傾向がバラバラになっているように見えるけど、どこかで間違えているのかわからない

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2kaha2941
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038

