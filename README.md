BXjscls Package
===============

LaTeX: Japanese document class collection for all major engines

This package provides an extended version of the Japanese document
class collection provided by [jsclasses package]. While the original
version supports only pLaTeX and upLaTeX, the extended version also
supports pdfLaTeX, XeLaTeX and LuaLaTeX, with the aid of suitable
packages that provide capability of Japanese typesetting.

[jsclasses package]: (https://www.ctan.org/pkg/jsclasses)

### SYSTEM REQUIREMENTS

  * TeX engine: pdfTeX, XeTeX, LuaTeX, pTeX, or upTeX.
      - e-TeX extension is not needed.
      - XeTeX must be of version 0.997 or later.
  * TeX format: LaTeX.
  * DVIware: Anything.
  * Prerequisite packages:
      - keyval
      - calc
      - geometry
  * Packages that the standard ja-driver cooperates with:
      - On (pdf)LaTeX:
        CJK + bxcjkjatype (v0.2c+)
      - On XeLaTeX:
        xeCJK (v3.0+) + zxjatype (v0.6+)
      - On LuaLaTeX:
        LuaTeX-ja
  * Other packages required on occasion:
      - type1cm: when `magstyle` is `real`/`xreal`
      - pxchfon (v0.5+): when `jafont` is used on pLaTeX
      - zxjafont (v0.2a+):  when `jafont` is used on XeLaTeX
  * When you use ja-drivers other than standard, you generally need
    packages for processing Japanese documents that the employed
    combination of the ja-driver and the engine supports.

### PACKAGE CONTENT

  * `bxjscls-manual.pdf`: the user manual
  * `bxjscls-manual.tex`: the source file for the above
  * `bxjscls.dtx`: the DocStrip source file
  * `bxjscls.ins`: the DocStrip installer file
  * `bxjscls.pdf`: the DocStrip document (source code description)

### INSTALLATION

This package bundle is provided in the form of a DocStrip file.

First, run the command to create some files:

    luatex bxjscls.ins

This command will generate the following files:

  * `bxjsarticle.cls`: the BXJS-flavored article class file
  * `bxjsbook.cls`: the BXJS-flavored book class file
  * `bxjsreport.cls`: the BXJS-flavored report class file
  * `bxjsslide.cls`: the BXJS-flavored slide class file
  * `bxjsja-minimal.def`: the `minimal` ja-driver file
  * `bxjsja-standard.def`: the `standard` ja-driver file
  * `bxjsja-pandoc.def`: the `pandoc` ja-driver file
  * `bxjsja-modern.def`: the `modern` ja-driver file
  * `bxjscompat.sty`: the `bxjscompat` package file
  * `bxjscjkcat.sty`: the `bxjscjkcat` package file

After that, move the files as follows (in a system compliant to
TDS 1.1):

  - `*.cls`/`*.def`/`*.sty` → $TEXMF/tex/latex/bxjscls/
  - `*.dtx`/`*.ins` → $TEXMF/source/latex/bxjscls/
  - `*.pdf`/`*.tex` → $TEXMF/doc/latex/bxjscls/

And rehash your TEXMF trees if necessary.

### USAGE

Please refer to the user manual `bxjscls-manual.pdf`.
Unfortunately, the manual is available only in Japanese....

### LICENSE

This package is distributed under the BSD 2-Clause License.

Revision History
----------------

  * Version 1.5d 〈2017/07/07〉
  * Version 1.5c 〈2017/06/10〉
  * Version 1.5b 〈2017/04/01〉
  * Version 1.5a 〈2017/03/14〉
  * Version 1.5  〈2017/03/11〉
      - Sync with jsclasses 2017/03/05.
  * Version 1.4  〈2017/02/03〉
  * Version 1.3a 〈2017/01/28〉
      - Sync with jsclasses 2017/01/13.
  * Version 1.3  〈2016/11/01〉
      - Sync with jsclasses 2016/10/08.
  * Version 1.2a 〈2016/08/17〉
  * Version 1.2  〈2016/08/01〉
  * Version 1.1f 〈2016/07/16〉
  * Version 1.1e 〈2016/05/28〉
  * Version 1.1d 〈2016/05/21〉
  * Version 1.1c 〈2016/05/01〉
  * Version 1.1b 〈2016/03/27〉
  * Version 1.1a 〈2016/02/20〉
  * Version 1.1  〈2016/02/14〉
  * Version 1.0d 〈2015/11/21〉
  * Version 1.0c 〈2015/10/18〉
  * Version 1.0b 〈2015/09/07〉
  * Version 1.0a 〈2015/08/23〉
  * Version 1.0  〈2015/08/05〉
  * Version 0.9  〈2013/10/03〉
  * Version 0.4  〈2013/08/03〉
  * Version 0.3a 〈2012/05/01〉
  * Version 0.3  〈2010/08/15〉
  * Version 0.2  〈2009/08/15〉

--------------------
Takayuki YATO (aka. "ZR")  
https://github.com/zr-tex8r
