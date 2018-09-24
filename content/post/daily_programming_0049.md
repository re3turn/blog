---
title: "Daily programming #0049"
date: 2018-09-25T03:13:15+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

随分間が空いてしまったが[言語処理100本ノック 2015][100knock]の#47をやっていく。

# 第5章: 係り受け解析

夏目漱石の小説『吾輩は猫である』の文章（[neko.txt][inputfile]）をCaboChaを使って係り受け解析し，その結果をneko.txt.cabochaというファイルに保存せよ．このファイルを用いて，以下の問に対応するプログラムを実装せよ．

[このあたり][CaboCha]の記述を参考にCaboChaをインストールし、neko.txt.cabochaを作成する。

neko.txt.cabochaのサイズが大きく、glot.ioではそのまま実行できないため、第5章は実行結果を記載する方針とする。

# 47. 機能動詞構文のマイニング[Golang]

## Question

動詞のヲ格にサ変接続名詞が入っている場合のみに着目したい．[46][46]のプログラムを以下の仕様を満たすように改変せよ．

 - 「サ変接続名詞+を（助詞）」で構成される文節が動詞に係る場合のみを対象とする
 - 述語は「サ変接続名詞+を+動詞の基本形」とし，文節中に複数の動詞があるときは，最左の動詞を用いる
 - 述語に係る助詞（文節）が複数あるときは，すべての助詞をスペース区切りで辞書順に並べる
 - 述語に係る文節が複数ある場合は，すべての項をスペース区切りで並べる（助詞の並び順と揃えよ）

例えば「別段くるにも及ばんさと、主人は手紙に返事をする。」という文から，以下の出力が得られるはずである．

```
返事をする      と に は        及ばんさと 手紙に 主人は
```

このプログラムの出力をファイルに保存し，以下の事項をUNIXコマンドを用いて確認せよ．

 - コーパス中で頻出する述語（サ変接続名詞+を+動詞）
 - コーパス中で頻出する述語と助詞パターン

## Code

[100knock #47][snipet]

<iframe src='https://glot.io/snippets/f2ptwjc1v8/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

## Output

```:shell
$ ./main input.txt
返事をする   さ と に は 及ばんさと 手紙に 主人は
```

結果は例文で与えられたものだけを出力した。

例文と出力が異なるのは、恐らくCaboChaのバージョンが異なり、「さ」を助詞として扱っているためだと考えられる。述語に係る文節中に助詞が複数ある場合の条件はないので、スペース区切りでそのまま出力した。

```:shell
$ ./main ../neko.txt.cabocha > output.txt
$ cat output.txt | awk '{print $1}' | sort | uniq -c | sort -nr | head -10
     27 返事をする
     19 挨拶をする
     12 話をする
      8 質問をする
      7 喧嘩をする
      6 真似をする
      5 質問をかける
      5 相談をする
      5 注意をする
      5 昼寝をする

$ cat output.txt | awk 'BEGIN {FS="\t"} {print $1,$2}' | sort | uniq -c | sort -nr | head -10
      5 返事をする と
      4 挨拶をする から
      3 返事をする と は
      3 挨拶をする と
      3 喧嘩をする と
      2 同情を表する て と は
      2 休養を要する は
      2 返事をする から と
      2 議論をする て
      2 覚悟をする と
```

結果は例として先頭から10個を表示した

## Comment

久しぶりだったのでどんな問題なのかを理解するところから始めることになった。
一度完成したと思ったが「すべての助詞をスペース区切りで辞書順に並べる」という条件を読んでいなかったため、後で修正した。

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch5
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt
[snipet]:https://glot.io/snippets/f2ptwjc1v8
[CaboCha]:https://www.trifields.jp/install-cabocha-in-ubuntu-1038
[46]:https://re3turn.github.io/blog/post/daily_programming_0048