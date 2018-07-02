---
title: "Daily programming #0046"
date: 2018-07-02T23:33:12+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#44をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 44. 係り受け木の可視化[Golang]

## Question

与えられた文の係り受け木を有向グラフとして可視化せよ．可視化には，係り受け木を[DOT言語][DOT]に変換し，[Graphviz][Graphviz]を用いるとよい．また，Pythonから有向グラフを直接的に可視化するには，[pydot][pydot]を使うとよい．

## Code

[100knock #44][snipet]

<iframe src='https://glot.io/snippets/f2jckebuhm/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main ../neko.txt.cabocha
$ dot -T png diGraph.dot -o 44.png
```

{{< figure src="/blog/images/golang/44_directed_graph.png" >}}

例として10文目をDOT言語に変換し表示させた

## Comment

事前準備として[Graphviz][Graphviz install]と[awalterschulze/gographviz][gographviz]パッケージをインストールする。

```
go get github.com/awalterschulze/gographviz

```

[Graphviz][Graphviz install]はそれぞれのOSでインストール方法が異なるがubuntuの場合は以下を実行

```
sudo apt install graphviz
```

コードについては、[先人のコード][blog]を参考にした

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2jckebuhm
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
[DOT]:https://ja.wikipedia.org/wiki/DOT%E8%A8%80%E8%AA%9E
[Graphviz]:http://www.graphviz.org/
[Graphviz install]:http://www.graphviz.org/download/
[pydot]:https://github.com/erocarrera/pydot
[gographviz]:https://github.com/awalterschulze/gographviz
[blog]:http://cipepser.hatenablog.com/entry/2017/07/01/110053
