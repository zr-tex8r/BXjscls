BXjscls パッケージバンドル
==========================

LaTeX: 全エンジン対応日本語文書クラス集

奥村晴彦氏作製の [pLaTeX2e 新ドキュメントクラス] の和文文書クラス集を
拡張したもの。元のクラスは (u)pLaTeX 専用であるが、こちらは pdfLaTeX /
XeLaTeX / LuaLaTeX の上でも日本語処理パッケージと連携して使用すること
ができる。

[pLaTeX2e 新ドキュメントクラス]:
(http://oku.edu.mie-u.ac.jp/~okumura/jsclasses/)

### 前提環境

  * TeX エンジン： pdfTeX / XeTeX / LuaTeX / pTeX / upTeX / pTeX-ng
      - e-TeX 拡張は必須でない
      - XeTeX は 0.997 版以降が必要
  * フォーマット： LaTeX
  * DVI ウェア： 不問
  * 必須パッケージ：
      - calc
      - geometry v5.0以降
      - ifpdf
      - keyval
  * 場合により必須となるパッケージ：
      - bxwareki： 日付の和暦表示機能を使う場合
      - jslogo： `jslogo` 指定時
      - plautopatch v0.3以降： (u)pLaTeX かつ `plautopatch` 指定時
      - type1cm： `magstyle=nomag*` 指定時
      - standard 和文ドライバ使用時：
          + bxcalc v1.0以降： 和文パラメタ `units` 指定時
          + bxcjkjatype v0.2c以降： (pdf)LaTeX 使用時
          + CJK： (pdf)LaTeX 使用時
          + LuaTeX-ja： LuaLaTeX 使用時
          + pxchfon v0.5以降： (u)pLaTeX かつ `jafont` 指定時
          + pxjahyper-enc： インストール済なら使用する
          + xeCJK v3.0以降： XeLaTeX 使用時
          + zxjafont v0.2a以降： XeLaTeX かつ `jafont` 指定時
          + zxjatype： XeLaTeX 使用時
      - Pandoc モード使用時： ※standard のものに追加して
          + bxghost v0.3.0以降： インストール済なら使用する
          + bxorigcapt： Babel 使用時
          + etoolbox v2.0以降： e-TeX なら
          + filehook v0.5d以降： e-TeX なら
          + iftex
          + pdftexcmds v0.5以降
          + pxbabel： (u)pLaTeX かつ Babel 使用時
  * エンジンが (u)pTeX 以外で、かつ和文ドライバが standard 以外の場合、
    そのエンジンに対応する日本語処理パッケージが必要となる。

### 構成物

  * `bxjscls-manual.pdf`： ユーザ向け説明書
  * `bxjscls-manual.tex`： 上項のソースファイル
  * `bxjscls.dtx`： DocStrip ソースファイル
  * `bxjscls.ins`： DocStrip インストーラファイル
  * `bxjscls.pdf`： DocStrip 文書（ソースコード説明書）

※アーカイブ中に DocStrip からの生成ファイル（`*.cls`／`*.def`、一覧は
次節に後掲）が含まれる場合もある。

### インストール

本パッケージバンドルは DocStrip 形式ファイルの形で提供されている。

アーカイブに文書クラスファイル（`*.cls`／`*.def`）が含まれていない場合
は、以下のコマンドを実行して生成する。

    luatex bxjscls.ins

このコマンドにより次のファイル群が生成される。

  * `bxjsarticle.cls`： BXJS版 article クラスファイル
  * `bxjsbook.cls`： BXJS版 book クラスファイル
  * `bxjsreport.cls`： BXJS版 report クラスファイル
  * `bxjsslide.cls`： BXJS版 slide クラスファイル
  * `bxjsja-minimal.def`： minimal 和文ドライバファイル
  * `bxjsja-standard.def`： standard 和文ドライバファイル
  * `bxjsja-pandoc.def`: pandoc 和文ドライバファイル
  * `bxjsja-modern.def`: modern 和文ドライバファイル
  * `bxjscompat.sty`: bxjscompat パッケージファイル
  * `bxjscjkcat.sty`: bxjscjkcat パッケージファイル
  * `bxjspandoc.sty`: bxjspandoc パッケージファイル

その後、各ファイルを次の場所に移動する。
（TDS 1.1 に従ったシステムの場合。）

  - `*.cls`/`*.def`/`*.sty` → $TEXMF/tex/latex/bxjscls/
  - `*.dtx`/`*.ins` → $TEXMF/source/latex/bxjscls/
  - `*.pdf`/`*.tex` → $TEXMF/doc/latex/bxjscls/

その後、（必要に応じて）`mktexlsr` を実行する。

#### （参考）説明書文書のコンパイル

アーカイブに含まれる説明書の PDF 文書は以下のコマンドによって生成
されたものである。

  * `bxjscls-manual.pdf` ← `lualatex bxjscls-manual.tex`
  * `bxjscls.pdf` ← `lualatex bxjscls.dtx`

### 使用方法

ユーザ向け説明書 `bxjscls-manual.pdf` を参照されたい。

### ライセンス

修正BSDライセンス（The BSD 2-Clause License）の下で配布される。

更新履歴
--------

  * Version 2.7a 〈2022/04/10〉
      - (試験的) `nodvidriver*` オプションを追加。
  * Version 2.7  〈2022/03/30〉
      - 新版の Pandoc テンプレートへの対策。
      - バグ修正。
  * Version 2.6  〈2022/03/20〉
      - LaTeX カーネル 2021/11/15 版への対応。
      - 新版の Pandoc テンプレートへの対策。
      - `\strongfontdeclare` 命令の補填。
  * Version 2.5a 〈2021/05/18〉
      - 新版の Pandoc テンプレートへの対策。
  * Version 2.5  〈2021/02/02〉
      - `plautopatch` オプションを追加。
  * Version 2.4a 〈2021/01/27〉
      - pandoc 和文ドライバにおいて、Polyglossia で `japanese` が指定
        された場合も独自処理に切り替える。
  * Version 2.4  〈2020/10/16〉
      - geometry と互換の用紙サイズ名オプションを追加。
      - `iso-bsize` オプションを追加。
      - (試験的) `pandoc+` オプションを追加。
      - 非推奨のオプションの一部について、警告を出す。
  * Version 2.3  〈2020/10/10〉
      - jsclasses の 2020/10/05 と同期。
      - minijs パッケージの読込をブロックする。
      - `jafont=auto` 指定で、updmap で `jaVariant` が `-04` に指定されて
        いる場合は `jis2004` 和文パラメタ指定時と同等の動作をする。
  * Version 2.2c 〈2020/10/04〉
      - バグ修正。
  * Version 2.2b 〈2020/09/29〉
      - LaTeX カーネル 2020/10/01 版への対応。
  * Version 2.2a 〈2020/09/22〉
      - バグ修正。
  * Version 2.2  〈2020/09/04〉
      - `\strong` 命令・`strongenv` 環境の補填は standard 和文ドライバ
        の機能に移した。
      - pandoc 和文ドライバパラメタ `strong` を追加。
      - `custompaper` オプションを追加。
      - pandoc 和文ドライバパラメタ `fix-strong`・`fix-code` を追加。
  * Version 2.1  〈2020/05/28〉
      - fontspec と互換の `\strong` 命令・`strongenv` 環境を追加。
      - 和文等幅フォントの挙動が ltjsclasses と異なるのを修正。
  * Version 2.0a 〈2020/04/04〉
      - 非推奨のオプションの一部について、警告を出す。
  * Version 2.0  〈2020/03/25〉
      - XeLaTeX・LuaLaTeX での既定の和文フォントを「IPAex フォント」から
        「原ノ味フォント」に変更した。
      - geometry 4.x 版のサポートを廃止した。
      - 開発者命令 `\ifdraft` を廃止した。
      - 和暦の処理に関して bxwareki パッケージを必須とする。
      - 旧版との互換性のためのオプション（`dvipdfmx-if-dvi` など）を
        非推奨の扱いとする。
  * Version 1.9k 〈2020/02/15〉
      - バグ修正。（`12Q` 等を使えるようにする。）
  * Version 1.9j 〈2020/02/05〉
      - jsclasses の 2020/02/02 と同期。
          + NFSS の改修に対応した。
  * Version 1.9i 〈2019/11/24〉
      - Pandoc モードを最新の Pandoc に対応させる。
  * Version 1.9h 〈2019/07/27〉
      - jsclasses の 2019/07/25 と同期。
      - バグ修正。
  * Version 1.9g 〈2019/06/23〉
      - バグ修正。
  * Version 1.9f 〈2019/03/10〉
      - Pandoc モードを最新の Pandoc に対応させる。
  * Version 1.9e 〈2019/01/13〉
      - XeTeX の場合の既定の IPAex フォントをファイル名指定にする。
  * Version 1.9d 〈2018/10/03〉
      - 原則的に和暦の処理を bxwareki パッケージに任せる。
      - バグ修正。
  * Version 1.9c 〈2018/09/04〉
      - pandoc 和文ドライバの Babel 対策を改良。
      - バグ修正。
  * Version 1.9b 〈2018/08/20〉
      - バグ修正。
  * Version 1.9a 〈2018/07/20〉
      - jsclasses の 2018/06/23 と同期。
          + `\jsTocLine` を新設。
  * Version 1.9  〈2018/04/19〉
      - 一部のオプションの名前を変更：  
        `use-zw`、`disguise-js`、`precise-text`、`simple-ja-setup`
  * Version 1.8b 〈2018/04/14〉
      - bxjscjkcat を新しい upTeX に追随させる。
      - 新元号に関する何か。
  * Version 1.8a 〈2018/03/29〉
      - jsclasses の 2018/03/11 と同期。（仕様変更は無し。）
      - バグ修正。
  * Version 1.8  〈2018/03/03〉
      - `textwidth`、`number-of-lines` オプションを新設。
      - `\setpagelayout+` 命令をを新設。
      - jlreq 文書クラスとの互換用のオプション（`fontsize` 等）を追加。
      - (u)pLaTeX 以外のエンジンでは常に `ja` オプションを明示することを
        推奨する。
      - 二文字フォント命令の使用の警告を少し冗長にした。
      - バグ修正。
  * Version 1.7c 〈2018/02/04〉
      - オプション `label-section` を新設。
  * Version 1.7b 〈2018/01/28〉
      - 和文パラメタ `units` を新設。
      - `jafont` オプションの丸括弧記法。
      - バグ修正。
  * Version 1.7a 〈2017/12/09〉
      - 〈試験的〉新元号対応の準備。`\jayear` 命令を追加。
      - `\@` の定義を修正。`fix-at-cmd` オプションを追加。
  * Version 1.7  〈2017/10/21〉
      - 和文空白命令（`\jaenspace` 等）を追加。
      - `everyparhook` オプションを新設。
  * Version 1.6b 〈2017/09/28〉
      - Pandoc モードでは bxcjkjatype に autotilde を付けない。
  * Version 1.6a 〈2017/09/24〉
      - `bxjspandoc` パッケージを新設。
      - Pandoc モードで起こる細かい不具合に対処した。
  * Version 1.6  〈2017/09/09〉
      - bxjsreport の継承元を jsbook + report から jsreport に変更した。
      - jsclasses の 2017/09/03 版と同期。
  * Version 1.5d 〈2017/07/07〉
      - バグ修正。
  * Version 1.5c 〈2017/06/10〉
      - `\jafontsize` 命令を追加。
      - 和文パラメタ `jis2004` を新設。
      - 和文パラメタ `font` を新設。
      - `jafont=auto` 設定で updmap.cfg を読む際に `kanjiEmbed` に加えて
        `jaEmbed` も読み取る。
      - バグ修正。
  * Version 1.5b 〈2017/04/01〉
      - 全エンジンについて、`\>` で和欧文間空白を挿入するようにした。
      - `xkanjiskip-cmd` オプションを新設。
      - `nodvidriver` ドライバオプションを新設。
      - バグ修正。
  * Version 1.5a 〈2017/03/14〉
      - バグ修正。
  * Version 1.5  〈2017/03/11〉
      - jsreport の `layout=v2` 指定で、従来の jsbook + report に代わって、
        jsclasses で新設された jsreport のレイアウトを継承する。
      - pLaTeX-ng のためのエンジンオプション `platex-ng` を新設。
      - `chapterabstract` 環境を新設。
      - `hyperref-enc`、`whole-zw-lines` オプションを新設。
      - jsclasses の 2017/03/05 と同期。
          + `openleft` オプションを新設。
          + `\frontmatter`、`\backmatter` の仕様の変更。
  * Version 1.4  〈2017/02/03〉
      - `\zwapace` 命令を追加。
      - 数式中の和文出力をサポートした。
      - バグ修正。
  * Version 1.3a 〈2017/01/28〉
      - jsclasses の 2017/01/13 と同期。
  * Version 1.3  〈2016/11/01〉
      - bxjsbook について、水平マージンの量が jsbook と大きく異なると
        いう不具合を修正した。同時に修正前のレイアウトを継続するための
        オプション `layout` を新設した。
      - jsclasses の 2016/10/08 と同期。  
        ※ページレイアウトの修正にはまだ追随てきていない。
          + `(no)jslogo` オプションを新設。`jslogo` 指定時は（jsclasses
            の）jslogo パッケージを読みこむ。（既定は `nojslogo`。）
          + bxjsslide の一部の節見出しのレイアウトを修正。
          + 和文用の微調整。
  * Version 1.2a 〈2016/08/17〉
      - fancyhdr パッケージに対する調整を入れた。
      - `fancyhdr`、`textwidth-limit`、`paragraph-mark` オプションを新設。
      - `\ascpt` 命令を新設した。
  * Version 1.2  〈2016/08/01〉
      - `geometry` オプションを新設した。
      - `dvi` オプションを新設した。
      - `\bf` や `\it` などの“二文字フォント命令”の使用に対して警告を
        (現状では控えめに)出すようにする。この警告を制御するオプション
        `(no)oldfontcommands` および `\(dis)allowoldfontcommands` 命令
        を新設した。
      - 万一“2.09 互換モード”で BXJS クラスが読み込まれた場合は致命的
        エラーとする。
  * Version 1.1f 〈2016/07/16〉
      - jsclasses の開発体制の変更に応じて、原作に関する記述を修正。
      - magstyle オプションの値の名前を jsclasses に合わせて変更。
      - 動く引数中で `\@` を用いた場合に aux ファイル中で後続の空白文字
        が消えてしまう不具合を修正。
      - graphics/color パッケージ対策で `nosetpagesize` をグローバルに
        指定した。
  * Version 1.1e 〈2016/05/28〉
      - `\subtitle` の定義を遅延させる。
  * Version 1.1d 〈2016/05/21〉
      - XeTeX でも「hyperref で `unicode` を既定で有効」にする。
      - `bigcode`/`nobigcode` オプションを追加。
  * Version 1.1c 〈2016/05/01〉
      - バグ修正。
  * Version 1.1b 〈2016/03/27〉
      - 〈試験的〉`precisetext` オプションを追加。
  * Version 1.1a 〈2016/02/20〉
      - `\jachar` 命令を追加。
      - バグ修正。
  * Version 1.1  〈2016/02/14〉
      - “Pandoc モード”および pandoc 和文ドライバを追加。
      - サブタイトル命令 `\subtitle` を追加。
      - 〈試験的〉modern 和文ドライバを追加。
      - 〈試験的〉補助パッケージ bxjscompat と bxjscjkcat を追加。
  * Version 1.0d 〈2015/11/21〉
      - バグ修正。
  * Version 1.0c 〈2015/10/18〉
      - バグ修正。
  * Version 1.0b 〈2015/09/07〉
      - 未知のオプションがあるとエラーになるという不具合（これだと
        “グローバルオプション”が使えない）を修正した。
      - `ja(driver)` が非指定の場合はエンジンやドライバのオプションが
        無い場合のエラー・警告を抑止した。（v0.3 との互換性対策。）
      - 別行立て数式で不要な警告が出ていたのを修正。
  * Version 1.0a 〈2015/08/23〉
      - `base`/`jbase` での Q 単位の指定に対応。
      - pdflatex 使用時に `\hypersetup` で和文文字を含む文書情報を
        指定可能にする。
      - バグ修正。
  * Version 1.0  〈2015/08/05〉
      - bxjsreport と bxjsslide クラスを提供する。
      - `jafont` オプションを追加。
      - `nopapersize` オプションを追加。
      - hyperref 対策を追加。
      - microtype 対策を追加。
      - `\ifdraft` の定義を遅延させる。
      - その他もろもろ。
  * Version 0.9  〈2013/10/03〉
      - LuaTeX-ja との連携をサポート。
      - `magstyle`、`(no)zw`、`(no)js` オプションを追加。
      - “和文ドライバ”の概念を採用して、ソースコードの構成を
        大幅に変更した。
  * Version 0.4  〈2013/08/03〉
      - CJK + bxcjkjatype との連携を追加。
  * Version 0.3a 〈2012/05/01〉
      - 一部の用紙サイズオプション（`b4paper` 等）で、縦と横の長さを
        逆に指定していたのを修正した。
  * Version 0.3  〈2010/08/15〉
      - (u)pLaTeX 用連携モジュールを追加。
      - `jbase` クラスオプションを追加。
      - `base`, `jbase`, `mag` を calc パッケージの数式で
        記述できるようにした。
  * Version 0.2  〈2009/08/15〉
      - 最初の公開版。

--------------------
Takayuki YATO (aka. "ZR")  
https://github.com/zr-tex8r
