---
title: "Daily programming #0043"
date: 2018-06-29T21:03:17+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#41をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 41. 係り受け解析結果の読み込み（文節・係り受け）[Golang]

## Question

[40][40]に加えて，文節を表すクラス`Chunk`を実装せよ．このクラスは形態素（`Morph`オブジェクト）のリスト（`morphs`），係り先文節インデックス番号（`dst`），係り元文節インデックス番号のリスト（`srcs`）をメンバ変数に持つこととする．さらに，入力テキストのCaboChaの解析結果を読み込み，１文を`Chunk`オブジェクトのリストとして表現し，8文目の文節の文字列と係り先を表示せよ．第5章の残りの問題では，ここで作ったプログラムを活用せよ．

## Code

[100knock #41][snipet]

<iframe src='https://glot.io/snippets/f2exupzqpj/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha
この -> 書生 という の は 
書生 という の は -> 話 で ある 。 
時々 -> 捕え て 
我々 を -> 捕え て 
捕え て -> 煮 て 
煮 て -> 食う という 
食う という -> 話 で ある 。 
話 で ある 。 
```

## Comment

CaboChaの`-f1`オプションで生成する形態素解析結果は以下のようなフォーマット[^1]になっているので、今回は`*`から始まる行も処理する必要がある

[^1]: [CaboChaで始める係り受け解析](https://qiita.com/nezuq/items/f481f07fc0576b38e81d)

### 一行目

```:text
* 文節番号 係り先の文節番号(係り先なし:-1)D 主辞の形態素番号/機能語の形態素番号 係り関係のスコア
```

### 二行目

```:text
表層形t品詞,品詞細分類1,品詞細分類2,品詞細分類3,活用形,活用型,原形,読み,発音
```

Goにはクラスの概念がないので`Chunk`を構造体として定義する

`*`から始まる行から処理し、`EOS`の行まできたら係り元文節インデックス番号のリストを作成した

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2exupzqpj
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
[40]:https://re3turn.github.io/blog/post/daily_programming_0042/
