---
title: "Daily programming #0027"
date: 2018-06-01T23:25:07+09:00
subtitle: ""
tags: ["Daily_Programming", "Golang"]
---

[言語処理100本ノック 2015][100knock]の#25をやっていく。

# 第3章: 正規表現の前提

Wikipediaの記事を以下のフォーマットで書き出したファイル[jawiki-country.json.gz][inputfile]がある．

1行に1記事の情報がJSON形式で格納される
各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，そのオブジェクトがJSON形式で書き出される
ファイル全体はgzipで圧縮される
以下の処理を行うプログラムを作成せよ．

JSONファイルの容量が大きく、glot.ioで実行する際に非常に時間がかかるため、「イギリス」に関する記事のみのJSONファイルを使用する。

# 25. テンプレートの抽出[Golang]

## Question

記事中に含まれる「基礎情報」テンプレートのフィールド名と値を抽出し，辞書オブジェクトとして格納せよ．

## Code

[100knock #25][snipet]

<iframe src='https://glot.io/snippets/f1iwnilece/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='400'></iframe>

```
|公式国名 = {{lang|en|United Kingdom of Great Britain and Northern Ireland}}<ref>英語以外での正式国名:<br/>\n
*{{lang|gd|An Rìoghachd Aonaichte na Breatainn Mhòr agus Eirinn mu Thuath}}（[[スコットランド・ゲール語]]）<br/>\n
*{{lang|cy|Teyrnas Gyfunol Prydain Fawr a Gogledd Iwerddon}}（[[ウェールズ語]]）<br/>\n
*{{lang|ga|Ríocht Aontaithe na Breataine Móire agus Tuaisceart na hÉireann}}（[[アイルランド語]]）<br/>\n
*{{lang|kw|An Rywvaneth Unys a Vreten Veur hag Iwerdhon Glédh}}（[[コーンウォール語]]）<br/>\n
*{{lang|sco|Unitit Kinrick o Great Breetain an Northren Ireland}}（[[スコットランド語]]）<br/>\n
**{{lang|sco|Claught Kängrick o Docht Brätain an Norlin Airlann}}、{{lang|sco|Unitet Kängdom o Great Brittain an Norlin Airlann}}（アルスター・スコットランド語）</ref>\n
```

公式国名が上記のように値が改行(\n)を含んでいるため以下の流れで抽出した。

 - 正規表現`{{基礎情報 (.*)\n([\s|\S]*)}}`で基礎情報のテンプレートを抽出
 - 抽出した文字列の`<br/>\n`を`<br/><<br/>>`に置換　　　　　　
 - 正規表現`\|(.+) = (.+)`でフィールド名と値を抽出
 - 抽出した値の`<br/><<br/>>`を`<br/>\n`に置換し直してmapに格納

[100knock]:http://www.cl.ecei.tohoku.ac.jp/nlp100/#ch3
[inputfile]:http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz
[snipet]:https://glot.io/snippets/f1kglvq7dx
