---
title: "Daily programming #0045"
date: 2018-07-01T02:50:27+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#43をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 43. 名詞を含む文節が動詞を含む文節に係るものを抽出[Golang]

## Question

名詞を含む文節が，動詞を含む文節に係るとき，これらをタブ区切り形式で抽出せよ．ただし，句読点などの記号は出力しないようにせよ．

## Code

[100knock #43][snipet]

<iframe src='https://glot.io/snippets/f2h3buzbz7/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha
どこで 生れた
かとんと    つかぬ
見当が つかぬ
した所で    泣いて
いた事だけは  記憶している
吾輩は 見た
ここで 始めて
ものを 見た

<以下省略>
```

## Comment

名詞を含む文節が動詞を含む文節に係るとは

`名詞を含む文節`が`動詞を含む文節`を装飾していること

つまり以下になっているものを抽出する

    
```
名詞を含む文節    動詞を含む文節
```

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2h3buzbz7
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
