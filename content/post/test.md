+++
date = '2025-01-18T01:35:22+09:00'
draft = true
title = 'Test'
+++
<!--more-->
# test

# Code Block
````
```js
const greeting = 'Hello, world!';
console.log(greeting);
```
````


```js
const greeting = 'Hello, world!';
console.log(greeting);
```

# Details

```
{{</* details Open >}}
// hoge
{{< / details */>}}
```


{{< details Open >}}
```js
const greeting = 'Hello, world!';
console.log(greeting);
${lorem[randomIndex]}
const loremIpsumGenerator = () => {
   const lorem = [
    'Lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur',
    'adipiscing', 'elit', 'Sed', 'do', 'eiusmod', 'tempor',
    'incididunt', 'ut', 'labore', 'et', 'dolore', 'magna', 'aliqua',
    'Ut', 'enim', 'ad', 'minim', 'veniam', 'quis', 'nostrud',
    'exercitation', 'ullamco', 'laboris', 'nisi', 'ut', 'aliquip', 'ex', 'ea',
    'commodo', 'consequat', 'Duis', 'aute', 'irure', 'dolor', 'in',
    'reprehenderit', 'in', 'voluptate', 'velit', 'esse', 'cillum',
    'dolore', 'eu', 'fugiat', 'nulla', 'pariatur', 'Excepteur',
    'sint', 'occaecat', 'cupidatat', 'non', 'proident', 'sunt', 'in',
    'culpa', 'qui', 'officia', 'deserunt', 'mollit', 'anim', 'id',
    'est', 'laborum'
];
let generatedText = ‘’;
for (let i = 0; i < 500; i++) {
   const randomIndex = Math.floor(Math.random() * lorem.length);
   generatedText += ${lorem[randomIndex]} CopyCopy;
}
return generatedText.trim();
};
```
{{< / details >}}

---  

# MarkDown Sample
credit: https://gist.github.com/mignonstyle/083c9e1651d7734f84c99b8cf49d57fa

</br>
{{< details Open >}}
# Block Elements

## Headers 見出し

先頭に`#`をレベルの数だけ記述します。

```markdown
# 見出し1
## 見出し2
### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6
```

# 見出し1
## 見出し2
### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6

## Block 段落

空白行を挟むことで段落となります。

```
段落1
(空行)
段落2
```

段落1

段落2

## Br 改行

改行の前に半角スペース`  `を2つ記述します。

```
hoge
fuga(スペース2つ)
piyo
```

hoge
fuga  
piyo

## Blockquotes 引用

先頭に`>`を記述します。ネストは`>`を多重に記述します。

```markdown
> 引用  
> 引用
>> 多重引用
```

> 引用  
> 引用
>> 多重引用

## Code コード

`` `バッククオート` `` 3つ、あるいはダッシュ`~`３つで囲みます。

````markdown
```
print 'hoge'
```
````

```
print 'hoge'
```

### インラインコード

`` `バッククオート` `` で単語を囲むとインラインコードになります。

```markdown
これは `インラインコード`です。
```

これは `インラインコード`です。

## pre 整形済みテキスト

半角スペース4個もしくはタブで、コードブロックをpre表示できます

```
    class Hoge
        def hoge
            print 'hoge'
        end
    end
```

    class Hoge
        def hoge
            print 'hoge'
        end
    end

## Hr 水平線

アンダースコア`_` 、アスタリスク`*`、ハイフン`-`などを3つ以上連続して記述します。

```markdown
hoge
***
hoge
___
hoge
---
```

hoge
***
hoge
___
hoge
---

# Lists

## Ul 箇条書きリスト

ハイフン`-`、プラス`+`、アスタリスク`*`のいずれかを先頭に記述します。  
ネストはタブで表現します。

```markdown
- リスト1
    - リスト1_1
        - リスト1_1_1
        - リスト1_1_2
    - リスト1_2
- リスト2
- リスト3
```

- リスト1
    - リスト1_1
        - リスト1_1_1
        - リスト1_1_2
    - リスト1_2
- リスト2
- リスト3

## Ol 番号付きリスト

`番号.`を先頭に記述します。ネストはタブで表現します。  
番号は自動的に採番されるため、すべての行を1.と記述するのがお勧めです。

```markdown
1. 番号付きリスト1
    1. 番号付きリスト1-1
    1. 番号付きリスト1-2
1. 番号付きリスト2
1. 番号付きリスト3
```

1. 番号付きリスト1
    1. 番号付きリスト1-1
    1. 番号付きリスト1-2
1. 番号付きリスト2
1. 番号付きリスト3

# Span Elements

## Link リンク

`[表示文字](URL)`でリンクに変換されます。

```markdown
[Google](https://www.google.co.jp/)
```

[Google](https://www.google.co.jp/)


## 強調
### em

アスタリスク`*`もしくはアンダースコア`_`1個で文字列を囲みます。

```markdown
これは *イタリック* です
これは _イタリック_ です
```

これは *イタリック* です
これは _イタリック_ です

### strong

アスタリスク`*`もしくはアンダースコア`_`2個で文字列を囲みます。

```markdown
これは **ボールド** です
これは __ボールド__ です
```

これは **ボールド** です
これは __ボールド__ です

### em + strong

アスタリスク`*`もしくはアンダースコア`_`3個で文字列を囲みます。

```markdown
これは ***イタリック＆ボールド*** です
これは ___イタリック＆ボールド___ です
```

これは ***イタリック＆ボールド*** です
これは ___イタリック＆ボールド___ です

## Images 画像

先頭の`!`で画像の<img>と認識されます。画像の大きさなどの指定をする場合はimgタグを使用します。

```markdown
![alt](画像URL)
![代替文字列](URL "タイトル")
```

# Table 表

`-`と`|`を使ってtableを作成します。

```markdown
| TH1 | TH2 |
----|---- 
| TD1 | TD3 |
| TD2 | TD4 |
```

| TH1 | TH2 |
----|---- 
| TD1 | TD3 |
| TD2 | TD4 |

```markdown
| 左揃え | 中央揃え | 右揃え |
|:---|:---:|---:|
|1 |2 |3 |
|4 |5 |6 |
```

| 左揃え | 中央揃え | 右揃え |
|:---|:---:|---:|
|1 |2 |3 |
|4 |5 |6 |
{{< / details >}}