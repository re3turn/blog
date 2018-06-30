---
title: "Daily programming #0042"
date: 2018-06-28T19:57:09+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#40をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 40. 係り受け解析結果の読み込み（形態素）[Golang]

## Question

形態素を表すクラス`Morph`を実装せよ．このクラスは表層形（`surface`），基本形（`base`），品詞（`pos`），品詞細分類1（`pos1`）をメンバ変数に持つこととする．さらに，CaboChaの解析結果（neko.txt.cabocha）を読み込み，各文を`Morph`オブジェクトのリストとして表現し，3文目の形態素列を表示せよ．

## Code

[100knock #40][snipet]

<iframe src='https://glot.io/snippets/f2erllvidc/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha
[{名前 名前 名詞 一般} {は は 助詞 係助詞} {まだ まだ 副詞 助詞類接続} {無い 無い 形容詞 自立} {。 。 記号 句点}]
```

## Comment

やることは[#30][30]とあまり変わらない

CaboChaの`-f1`オプションで生成する形態素解析結果は以下のようなフォーマットになっている[^1]

[^1]: [CaboChaで始める係り受け解析](https://qiita.com/nezuq/items/f481f07fc0576b38e81d)

```:shell
$ cabocha -f1
吾輩は猫である。

* 0 -1D 1/1 0.000000
吾輩は猫である 名詞,固有名詞,一般,*,*,*,吾輩は猫である,ワガハイハネコデアル,ワガハイワネコデアル
。   記号,句点,*,*,*,*,。,。,。
EOS
```

### 一行目

```:text
* 文節番号 係り先の文節番号(係り先なし:-1)D 主辞の形態素番号/機能語の形態素番号 係り関係のスコア
```

### 二行目

```:text
表層形t品詞,品詞細分類1,品詞細分類2,品詞細分類3,活用形,活用型,原形,読み,発音
```

Goにはクラスの概念がないので`Morph`を構造体として定義する

この問題では一行目は必要無いので`*`から始まる行を無視して`Morph`構造体のスライスに格納した

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2erllvidc
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
[30]:https://re3turn.github.io/blog/post/daily_programming_0032/
