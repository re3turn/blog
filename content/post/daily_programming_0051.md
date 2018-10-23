---
title: "Daily programming #0051"
date: 2018-10-24T00:23:04+09:00
subtitle: ""
tags: ["Daily_Programming", "Python3"]
---

競技プログラミングの問題をやる機会があったので[POJ No.3279(Fliptile)][POJ3279]をやっていく。

# POJ No.3279(Fliptile)[Python]

## Question

農夫ジョンは賢い牛ほどミルクを出すことを知った。  
そこで、牛たちを賢くするために次のようなゲームを用意しました。  
M x Nのマス目(1≦M≦15,1≦N≦15)があり、各マスごとに裏表をひっくり返すことが可能で
一方の面は黒色、他方の面は白色で塗られています。  
黒色のマスをひっくり返すと白色になり、白色のマスをひっくり返すと黒色になります。
ゲームの目的はすべてのマスを白色にすることです。  
ところが、牛の蹄は大きいため、1つのマスをひっくり返そうとすると
その縦横に隣接するマスまでひっくり返ってしまいます。  
ひっくり返すのは疲れる作業であるため、牛たちはできるだけ少ない手数で
すべてのマスを白色にしようと思いました。  
各マスの色が与えられるので、最小手数での各マスをひっくり返す方法を求めなさい。  
最小手の解が複数ある場合は辞書順で最小のものを出力しなさい。  
解が存在しない場合は、"IMPOSSIBLE"と出力しないさい。  

### Input

1行目はスペースで区切られた2つの整数N、M。  
2行目からM+1行目は、N個のスペースで区切られた0か1の整数。  
整数は1は黒、0は白のマスを表す。  

### Output

すべてのマスを白色にするまでに、特定の位置を何回ひっくり返すかをM x Nのマトリクスで表示する。
ただし、解が存在しない場合は、"IMPOSSIBLE"と出力する。

### Sample Input

```:text
4 4
1 0 0 1
0 1 1 0
0 1 1 0
1 0 0 1
```

### Sample Output

```:text
0 0 0 0
1 0 0 1
1 0 0 1
0 0 0 0
```

## Code

[POJ No.3279(Fliptile)][snipet]

<iframe src='https://glot.io/snippets/f5zrmt9r0p/embed' frameborder='0' scrolling='no' sandbox='allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts' width='600' height='1000'></iframe>

## Output

```:shell
$ python < input.txt
0 0 0 0
1 0 0 1
1 0 0 1
0 0 0 0
```

glot.ioでは上記以外の場合のサンプルも結果として出力するようにした。  


## Comment

この問題は競技プログラミングの教本[プログラミングコンテストチャレンジブック][ari]、俗に言う蟻本の中に同じ問題が入っています。私はこの本を持っていますが、どうやら[Google Books][Google Books]でも参照できるようです。

蟻本は、かなり前に一読しましたがPythonでは試したことがなかったので今回この問題をやってみました。  
が、ほぼ蟻本の内容をPythonに落とし込んだだけの形になってしまった・・・  
特に全パターンをビットシフトで出すなどは、頭では理解できても慣れていないとすぐにはでてこなかったです。  
暇があったら他の問題にもチャレンジしてみたいと思います。

[POJ3279]:http://poj.org/problem?id=3279
[snipet]:https://glot.io/snippets/f5zrmt9r0p
[Google Books]:https://books.google.co.jp/books?id=s40pvgbtOZ8C&pg=PA141&lpg=PA141&dq=POJ+no+3279&source=bl&ots=7h866oRiah&sig=QI3OAIsugH0P8tQxUxRjmlnkkd0&hl=en&sa=X&ved=2ahUKEwi2xJDMlpveAhXBdHAKHRikBKIQ6AEwAnoECAcQAQ#v=onepage&q=POJ%20no%203279&f=false
[ari]:http://amzn.asia/d/69rTv70