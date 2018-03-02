2.0版の予定
===========


## 仕様

  * `\ifdraft`を廃止する。
  * geometry 4.x 版のサポートを廃止する。
  * `dvipdfmx-if-dvi` を非推奨にする。
  * (u)pLaTeX 以外での `ja` の非指定を非推奨にする。
  * `platex-ng*` を非推奨にし、代わりに `platex-ng` でドライバ指定を可能にする。
  * オプション名変更（元の名前は非推奨）：
      - `(no)js` → `disguise-js=BOOL`
      - `(no)zw` → `use-zw=BOOL`
      - `(no)precisetext` → `precise-text=BOOL`
      - `(no)simplejasetup` → `simple-ja-setup=BOOL`

## 実装

  * xkeyval を導入する。
  * `\p@?` を `jsc@mpt` に変える。

