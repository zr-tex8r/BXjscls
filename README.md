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

  * TeX engine: TeX, pdfTeX, XeTeX, LuaTeX, pTeX, upTeX or pTeX-ng.
      - The e-TeX extension is not needed.
          + When using the standard mode, the e-TeX extension is required
            except on (u)pTeX.
      - XeTeX must be of version 0.997 or later.
  * TeX format: LaTeX.
  * DVIware (in DVI mode): Anything.
  * Prerequisite packages:
      - calc
      - geometry v5.0+
      - keyval
  * Packages required on occasion:
      - bxwareki: when the wareki feature is used
      - jslogo: if use `jslogo`
      - plautopatch v0.3+: if use (u)pLaTeX and `plautopatch`
      - type1cm: if use `magstyle=nomag*`
      - When using the standard mode (standard ja-driver):
          + bxcalc v1.0+: if use ja-parameter `units`
          + bxcjkjatype v0.2c+: if use (pdf)LaTeX
          + CJK:  if use (pdf)LaTeX
          + LuaTeX-ja: if use LuaLaTeX
          + pxchfon v0.5+: if use (u)pLaTeX and `jafont`
          + pxjahyper-enc: loaded if installed
          + xeCJK v3.0+: if use XeLaTeX
          + zxjafont v0.2a+: if use XeLaTeX and `jafont`
          + zxjatype: if use XeLaTeX
      - When using Pandoc mode, in addition to those of standard:
          + bxghost v0.3.0+: loaded if installed
          + bxorigcapt: if use Babel
          + etoolbox v2.0+
          + filehook v0.5d+
          + iftex v0.2+
          + pdftexcmds v0.5+
          + pxbabel: if use (u)pLaTeX and Babel
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
  * `bxjspandoc.sty`: the `bxjspandoc` package file

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

  * Version 2.9c 〈2024/07/19〉
  * Version 2.9b 〈2024/01/22〉
  * Version 2.9a 〈2023/08/02〉
  * Version 2.9  〈2023/07/17〉
  * Version 2.8b 〈2023/07/01〉
  * Version 2.8a 〈2023/06/20〉
  * Version 2.8  〈2023/06/14〉
      - Sync with jsclasses 2023/02/23.
  * Version 2.7a 〈2022/04/10〉
  * Version 2.7  〈2022/03/30〉
  * Version 2.6  〈2022/03/20〉
      - Support LaTeX kernel 2021/11/15.
  * Version 2.5a 〈2021/05/18〉
  * Version 2.5  〈2021/02/02〉
  * Version 2.4a 〈2021/01/27〉
  * Version 2.4  〈2020/10/16〉
  * Version 2.3  〈2020/10/10〉
      - Sync with jsclasses 2020/10/05.
  * Version 2.2c 〈2020/10/04〉
  * Version 2.2b 〈2020/09/29〉
      - Support LaTeX kernel 2020/10/01.
  * Version 2.2a 〈2020/09/22〉
  * Version 2.2  〈2020/09/04〉
  * Version 2.1  〈2020/05/28〉
  * Version 2.0a 〈2020/04/04〉
  * Version 2.0  〈2020/03/25〉
      - Now the default Japanese fonts on XeLaTeX/LuaLaTeX are "Harano
        Aji Fonts". (Formerly "IPAex Fonts" were used.)
      - Drop the support for geometry v4.x.
      - Abolish a developer-level command `\ifdraft`.
      - Now bxwareki package is required for using features on wareki
        (Japanese calendar) provided by the classes.
      - Some options provided for compatibility (`dvipdfmx-if-dvi` etc)
        are now marked as deprecated.
  * Version 1.9k 〈2020/02/15〉
  * Version 1.9j 〈2020/02/05〉
      - Sync with jsclasses 2020/02/02.
  * Version 1.9i 〈2019/11/24〉
  * Version 1.9h 〈2019/07/27〉
  * Version 1.9g 〈2019/06/23〉
  * Version 1.9f 〈2019/03/10〉
  * Version 1.9e 〈2019/01/13〉
  * Version 1.9d 〈2018/10/03〉
  * Version 1.9c 〈2018/09/04〉
  * Version 1.9b 〈2018/08/20〉
  * Version 1.9a 〈2018/07/20〉
      - Sync with jsclasses 2018/06/23.
  * Version 1.9  〈2018/04/19〉
  * Version 1.8b 〈2018/04/14〉
  * Version 1.8a 〈2018/03/29〉
      - Sync with jsclasses 2018/03/11.
  * Version 1.8  〈2018/03/03〉
  * Version 1.7c 〈2018/02/04〉
  * Version 1.7b 〈2018/01/28〉
  * Version 1.7a 〈2017/12/09〉
  * Version 1.7  〈2017/10/21〉
  * Version 1.6b 〈2017/09/28〉
  * Version 1.6a 〈2017/09/24〉
  * Version 1.6  〈2017/09/09〉
      - Sync with jsclasses 2017/09/03.
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
