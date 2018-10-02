---
title: "自作キーボードまとめ"
date: 2018-10-02T18:04:34+09:00
subtitle: ""
tags: ["keyboards"]
comments: true
---

自作キーボードが今年に入って非常に盛り上がっているなと思っていたら，自分でも作ってみたくなって気づいたらキーボードが増えていました。  
自分でもなんでこんなに買っているのかわかりません。  

ビルドログなどはググればたくさんでてくるので，ここでは作成時の所感とか使用感をまとめたいと思います。

購入したキーボードの順に記載していきます。

# Ergo42

{{< figure src="/blog/images/keyboards/Ergo42_01.jpg" >}}

- name : Ergo42
- keyswitch : [Kailhロープロファイルスイッチ 赤軸](https://yushakobo.jp/shop/pg1350/)
- keycap : [Kailhロープロ無刻印キーキャップ 白 & 黒](https://yushakobo.jp/shop/pg1350cap-blank/)

キットは技術書典4(2018/04/22)にサークル参加していた[人生たの椎名林檎](https://twitter.com/biacco42)さんのところで購入しました。  
このキーボードキットは現在販売終了していますが、新しいモデルの[Ergo42 Towel](https://tanoshii-life.booth.pm/items/952695)が販売されています。

## 作成時の所感

作成したのは、キースイッチやキーキャップなどが届いてからなので一週間後くらいに作成しました。  
私が購入したキットは，PCB，アクリルプレート，ネジ類のみが同梱されたキットだったので，Pro Microやダイオードなどは別途購入しています。今販売されているキットは，一式セットになっていて，追加で購入が必要なものはキースイッチ，キーキャップくらいだと思います。  
今はビルドマニュアルが更新されているので問題無いですが，Kailhロープロファイルスイッチを使用する場合は，キースイッチの反対側にダイオードを取り付ける必要があります。私が作成した時は正確な注意事項が書かれていなかったため同じ側に取り付けてしまい，後から修正しました。  

## 使用感

キーマップは[ここ](https://github.com/re3turn/qmk_firmware/tree/keymap/keyboards/ergo42/keymaps/re3turn)に置いてます。

キーの高さが低いためパームレスト無しでも打ちやすいし，打ち心地も非常にいいです。  
ergo42は，職場で日常的に使用してますが，Kailhロープロ無刻印キーキャップ 白は，塗装が剥げやすい気がします。特に親指で打鍵しているキーは剥がれるペースが早いです。逆に黒い方は剥がれにくい感じがします。

# Helix

{{< figure src="/blog/images/keyboards/Helix_01.jpg" >}}

- name : Helix (アクリル5行版 (バックライト)) 
- keyswitch : [Kailhロープロファイルスイッチ 赤軸](https://yushakobo.jp/shop/pg1350/)
- keycap : [Kailhロープロ無刻印キーキャップ 黒](https://yushakobo.jp/shop/pg1350cap-blank/)、 [Kailhロープロ刻印キーキャップ 白](https://yushakobo.jp/shop/pg1350cap-doubleshot/)

キット，およびパーツは[技魂](http://ketto.com/ts/)(2018/05/13)にサークル参加していた[遊舎工房](https://yushakobo.jp/)さんのところで購入しました。  
遊舎工房さんでHelixを作るためのパーツは一通り購入できるし，ネットで注文しても発送が早くて非常にいいです。

## 作成時の所感

基本的に[ビルドガイド](https://github.com/MakotoKurauchi/helix/blob/master/Doc/buildguide_jp.md)を見ながら作成すれば特に迷うことなく作成できます。  
唯一難しい箇所としては，バックライト用のLEDは温度が高いと壊れてしまうため注意が必要です。  
私が作成した際は，壊すことなく取り付けることができました。

## 使用感

キーマップは[ここ](https://github.com/re3turn/qmk_firmware/tree/keymap/keyboards/helix/rev2/keymaps/re3turn)に置いてます。  
他の人の画像などを見るとバックライトやUnderglowはかっこいいなと思いますが，個人的には実際使用する際に付けてると邪魔になるため，バックライトは常時オフの状態で使用してます。  
自宅ではほとんどこのHelixを使用していますが，職場でergo42を使用しているためか，Helixの5行目が遠く感じられてきました。最近では数字だけ入力しなければいけないケース以外は，5行目を使用していません。

# HelixPico

{{< figure src="/blog/images/keyboards/HelixPico_01.jpg" >}}
{{< figure src="/blog/images/keyboards/HelixPico_02.jpg" >}}
{{< figure src="/blog/images/keyboards/HelixPico_03.jpg" >}}

- name : HelixPico
- keyswitch : [Kailhロープロファイルスイッチ 赤軸(Lube)](https://yushakobo.jp/shop/pg1350/)
- keycap : [Kailhロープロ刻印キーキャップ 白](https://yushakobo.jp/shop/pg1350cap-doubleshot/)

キット，およびパーツは[Maker Faire Tokyo 2018](http://makezine.jp/event/mft2018/)(2018/08/04-05)に出展していた[遊舎工房](https://yushakobo.jp/)さんのところで購入した。MFTは2日間開催されてますが私が行ったのは一日目です。

## 作成時の所感

キットに[組み立て説明書](https://yushakobo.jp/news/2018/08/01/helixpico/)が同封されており，説明書通りに作成すれば特に迷うことは無いため作成し易かったです。

何を思ったか自作キーボード界隈で[Lube](https://note.mu/daioki/n/ncc169f57ef51)と言われる作業(キースイッチやスタビライザーに潤滑剤を塗る)をやりました(約2時間)。[ようやるわ](https://note.mu/daioki/n/ncfa178a3aa92)。


## 使用感

音が鳴る，かわいい。  
作ってからほとんど触ってないのでキーマップはまだ作成できていません。  
キーキャプは[Eucalyn配列](http://eucalyn.hatenadiary.jp/entry/about-eucalyn-layout)を使ってみた買ったので，刻印キーキャプをEucalyn配列風に取り付けました。  
Eucalyn配列，いつか使いこなしてみたいです。

# Fortitude60

{{< figure src="/blog/images/keyboards/Fortitude60_01.jpg" >}}
{{< figure src="/blog/images/keyboards/Fortitude60_02.jpg" >}}

- name : FORTITUDE60 C94 Limited Edition
- keyswitch : [Gateron MX Switch White 3Pin 白軸(Lube)](https://talpkeyboard.stores.jp/items/5ac8415f5496ff34d4002621)

キットは[コミックマーケット94](https://www.comiket.co.jp/)(2018/08/10-12)にサークル参加していた[plus TK2S](https://plustk2s.com/)さんで購入しました。

はんだ付けが全部終わった状態でUSBをPCに指して動作確認しようとしたところ，一度は認識されましたが，それ以降USBデバイスとしてすら認識されず，文鎮化しました(MCUが死んでるぽい)。  
その後なんとかしようと試行錯誤しましたが，どうやらMCUを取りはずす際にPCBを傷つけたようで変な場所がGNDとショートしていたりして，このキットは諦めました。  
Fortitude60のGroup Buyでもう一台購入しているため，現在は到着待ちです。

# ErgoDash

{{< figure src="/blog/images/keyboards/ErgoDash_01.jpg" >}}
{{< figure src="/blog/images/keyboards/ErgoDash_02.jpg" >}}

- name : ErgoDash
- keyswitch : [R11 Blue Zilent スイッチ 62g(Lube)](https://yushakobo.jp/shop/a02zi/)
- keycap : [DSA PBT Keycap Set (ALL 1U/Black)](https://talpkeyboard.stores.jp/items/5ad70a535496ff535a000402), [DSA PBT Keycap set（59key 50%）](https://talpkeyboard.stores.jp/items/5b13748c5496ff255200a78f)

キットは[BOOTH](https://booth.pm/ja/items/1011978)で購入しました。


## 作成時の所感

[ビルドガイド](https://github.com/omkbd/ErgoDash/blob/master/Doc/build.md)を見れば特に迷うことなく作成できました。
キースイッチを取り付ける際に，アクリルプレートが固定されないため，キースイッチを付けるのが面倒くさかったです(キースイッチを数個取り付けてはんだ付けの繰り返し)。  
今回も何を思ったかLubeしました。ようやるわ。

## 使用感

作成したばっかりなのでまだわかりませんが，これからキーマップをどうするか考えたいです。  
スイッチはMFT2018で遊舎工房さんで購入した[キースイッチセット](https://yushakobo.jp/shop/a02as-19/)の中から打ち心地がよさそうな物を選びました。
