---
title: "Daily programming #0048"
date: 2018-07-04T00:51:43+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#46をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 46. 動詞の格フレーム情報の抽出[Golang]

## Question

[45][45]のプログラムを改変し，述語と格パターンに続けて項（述語に係っている文節そのもの）をタブ区切り形式で出力せよ．[45][45]の仕様に加えて，以下の仕様を満たすようにせよ．

 - 項は述語に係っている文節の単語列とする（末尾の助詞を取り除く必要はない）
 - 述語に係る文節が複数あるときは，助詞と同一の基準・順序でスペース区切りで並べる

「吾輩はここで始めて人間というものを見た」という例文（neko.txt.cabochaの8文目）を考える．この文は「始める」と「見る」の２つの動詞を含み，「始める」に係る文節は「ここで」，「見る」に係る文節は「吾輩は」と「ものを」と解析された場合は，次のような出力になるはずである．

```
始める  で      ここで
見る    は を   吾輩は ものを
```

## Code

[100knock #46][snipet]

<iframe src='https://glot.io/snippets/f2kb5ur96z/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha > output.txt
$ head -n 10 output.txt
生れる で   どこで
つく  と が かとんと 見当が
泣く  で   した所で
する  て だけ    泣いて いた事だけは
始める で   ここで
見る  は を 吾輩は ものを
聞く  で   あとで
捕える を   我々を
煮る  て   捕えて
食う  て   煮て
```

結果は例として先頭から10個を表示した

## Comment

[45][45]のコードに「述語に係っている文節」を出力するように変更しただけ

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2kb5ur96z
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
[45]:https://re3turn.github.io/blog/post/daily_programming_0047/
