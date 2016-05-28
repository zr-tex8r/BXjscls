%%
%% This is file `bxjsbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bxjscls.dtx  (with options: `cls,book')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from bxjsbook.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file bxjscls.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bxjsbook}
  [2016/05/28 v1.1e BXJS document classes]
%% このファイルは日本語文字を含みます
\RequirePackage{calc}
\RequirePackage{keyval}
\IfFileExists{bxjscompat.sty}{%
  \let\jsAtEndOfClass\@gobble
  \RequirePackage{bxjscompat}%
}{}
\let\jsEngine=n
\def\bxjs@test@engine#1#2{%
  \edef\bxjs@tmpa{\string#1}%
  \edef\bxjs@tmpb{\meaning#1}%
  \ifx\bxjs@tmpa\bxjs@tmpb #2\fi}
\bxjs@test@engine\kanjiskip{\let\jsEngine=j}
\bxjs@test@engine\jintercharskip{\let\jsEngine=J}
\bxjs@test@engine\XeTeXversion{\let\jsEngine=x}
\bxjs@test@engine\pdftexversion{\let\jsEngine=p}
\bxjs@test@engine\luatexversion{\let\jsEngine=l}
\newif\ifjsWithupTeX
\ifx\ucs\@undefined\else \ifnum\ucs"3000="3000
  \jsWithupTeXtrue
\fi\fi
\let\if@jsc@uplatex\ifjsWithupTeX
\newif\ifjsWitheTeX
\bxjs@test@engine\eTeXversion{\jsWitheTeXtrue}
\ifjsWitheTeX \let\bxjs@protected\protected
\else \let\bxjs@protected\@empty
\fi
\ifjsWitheTeX
  \def\bxjs@robust@def{\protected\def}
\else
  \def\bxjs@robust@def{\DeclareRobustCommand*}
\fi
\newif\ifjsInPdfMode
\@nameuse{ImposeOldLuaTeXBehavior}
\let\bxjs@tmpa\PackageWarningNoLine
\let\PackageWarningNoLine\PackageInfo % suppress warning
\RequirePackage{ifpdf}
\let\PackageWarningNoLine\bxjs@tmpa
\@nameuse{RevokeOldLuaTeXBehavior}
\let\ifjsInPdfMode\ifpdf
\@gobbletwo\if\if \def\bxjs@cond#1\fi{%
  #1\expandafter\@firstoftwo
  \else\expandafter\@secondoftwo
  \fi}
\let\jsArticle=a
\let\jsBook=b
\let\jsReport=r
\let\jsSlide=s
\let\jsDocClass\jsBook
\def\bxjs@clsname{bxjsbook}
\def\jsAtEndOfClass{%
  \expandafter\g@addto@macro\csname\bxjs@clsname.cls-h@@k\endcsname}
\@onlypreamble\bxjs@restore@jltrcc
\let\bxjs@restore@jltrcc\@empty
\if l\jsEngine
\def\bxjs@change@jltrcc#1{%
  \xdef\bxjs@restore@jltrcc{%
    \bxjs@restore@jltrcc
    \catcode`#1=\the\catcode`#1\relax}%
  \catcode`#1=11\relax}
\@tfor\bxjs@x:=西暦\do
  {\expandafter\bxjs@change@jltrcc\bxjs@x}
\fi
\bxjs@robust@def\jsInhibitGlue{%
  \ifx\inhibitglue\@undefined\else \inhibitglue \fi}
\newif\if@restonecol
\newif\if@titlepage
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\newif\if@enablejfam \@enablejfamtrue
\def\bxjs@setpaper#1{\def\bxjs@param@paper{#1}}
\DeclareOption{a3paper}{\bxjs@setpaper{a3paper}}
\DeclareOption{a4paper}{\bxjs@setpaper{a4paper}}
\DeclareOption{a5paper}{\bxjs@setpaper{a5paper}}
\DeclareOption{a6paper}{\bxjs@setpaper{a6paper}}
\DeclareOption{b4paper}{\bxjs@setpaper{{257truemm}{364truemm}}}
\DeclareOption{b5paper}{\bxjs@setpaper{{182truemm}{257truemm}}}
\DeclareOption{b6paper}{\bxjs@setpaper{{128truemm}{182truemm}}}
\DeclareOption{a4j}{\bxjs@setpaper{a4paper}}
\DeclareOption{a5j}{\bxjs@setpaper{a5paper}}
\DeclareOption{b4j}{\bxjs@setpaper{{257truemm}{364truemm}}}
\DeclareOption{b5j}{\bxjs@setpaper{{182truemm}{257truemm}}}
\DeclareOption{a4var}{\bxjs@setpaper{{210truemm}{283truemm}}}
\DeclareOption{b5var}{\bxjs@setpaper{{182truemm}{230truemm}}}
\DeclareOption{letterpaper}{\bxjs@setpaper{letterpaper}}
\DeclareOption{legalpaper}{\bxjs@setpaper{legalpaper}}
\DeclareOption{executivepaper}{\bxjs@setpaper{executivepaper}}
\newif\if@landscape
\@landscapefalse
\DeclareOption{landscape}{\@landscapetrue}
\newif\if@slide
\@slidefalse
\newcommand{\@ptsize}{0}
\def\bxjs@param@basefontsize{10pt}
\def\jsUnusualPtSize{-20}
\def\bxjs@setbasefontsize#1{%
  \bxjs@setbasefontlength\@tempdima{#1}%
  \edef\bxjs@param@basefontsize{\the\@tempdima}%
  \ifdim\@tempdima=10pt         \long\def\@ptsize{0}%
  \else\ifdim\@tempdima=10.95pt \long\def\@ptsize{1}%
  \else\ifdim\@tempdima=12pt    \long\def\@ptsize{2}%
  \else \long\edef\@ptsize{\jsUnusualPtSize}\fi\fi\fi}
\def\bxjs@setbasefontlength#1#2{%
  \bxjs@setbasefontlength@a#2true\@nnil
  \ifx j\jsEngine \setlength#1{#2}%
  \else
    \bxjs@setbasefontlength@b#2\@nil Q\@nil\@nnil
    \ifx\bxjs@tmpa\relax \setlength#1{#2}%
    \else \@tempdimc0.25mm #1=\bxjs@tmpa\@tempdimc
    \fi
  \fi}
\def\bxjs@setbasefontlength@b#1Q\@nil#2\@nnil{%
  \ifx\@nnil#2\@nnil \let\bxjs@tmpa\relax
  \else \def\bxjs@tmpa{#1}%
  \fi}
\def\bxjs@setbasefontlength@a#1true#2\@nnil{%
  \ifx\@nnil#2\@nnil\else
    \ClassWarningNoLine\bxjs@clsname
    {You should not use 'true' lengths here}%
  \fi}
\DeclareOption{8pt}{\bxjs@setbasefontsize{8pt}}
\DeclareOption{9pt}{\bxjs@setbasefontsize{9pt}}
\DeclareOption{10pt}{\bxjs@setbasefontsize{10pt}}
\DeclareOption{11pt}{\bxjs@setbasefontsize{10.95pt}}
\DeclareOption{12pt}{\bxjs@setbasefontsize{12pt}}
\DeclareOption{14pt}{\bxjs@setbasefontsize{14.4pt}}
\DeclareOption{17pt}{\bxjs@setbasefontsize{17.28pt}}
\DeclareOption{20pt}{\bxjs@setbasefontsize{20pt}}
\DeclareOption{21pt}{\bxjs@setbasefontsize{20.74pt}}
\DeclareOption{25pt}{\bxjs@setbasefontsize{24.88pt}}
\DeclareOption{30pt}{\bxjs@setbasefontsize{29.86pt}}
\DeclareOption{36pt}{\bxjs@setbasefontsize{35.83pt}}
\DeclareOption{43pt}{\bxjs@setbasefontsize{43pt}}
\DeclareOption{12Q}{\bxjs@setjbasefontsize{3mm}}
\DeclareOption{14Q}{\bxjs@setjbasefontsize{3.5mm}}
\DeclareOption{10ptj}{\bxjs@setjbasefontsize{10pt}}
\DeclareOption{10.5ptj}{\bxjs@setjbasefontsize{10.5pt}}
\DeclareOption{11ptj}{\bxjs@setjbasefontsize{11pt}}
\DeclareOption{12ptj}{\bxjs@setjbasefontsize{12pt}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
\DeclareOption{vartwoside}{\@twosidetrue \@mparswitchfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil$\displaystyle{{}##{}}$\hfil
      &\global\@eqcnt\tw@ $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}%
  \def\eqnarray{%
    \stepcounter{equation}%
    \def\@currentlabel{\p@equation\theequation}%
    \global\@eqnswtrue\m@th
    \global\@eqcnt\z@
    \tabskip\mathindent
    \let\\=\@eqncr
    \setlength\abovedisplayskip{\topsep}%
    \ifvmode
      \addtolength\abovedisplayskip{\partopsep}%
    \fi
    \addtolength\abovedisplayskip{\parskip}%
    \setlength\belowdisplayskip{\abovedisplayskip}%
    \setlength\belowdisplayshortskip{\abovedisplayskip}%
    \setlength\abovedisplayshortskip{\abovedisplayskip}%
    $$\everycr{}\halign to\linewidth% $$
    \bgroup
      \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil$\displaystyle{{}##{}}$\hfil
      &\global\@eqcnt\tw@
        $\displaystyle{##}$\hfil \tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
    \tabskip\z@skip\cr
    }}
\let\ifjsDraft\iffalse
\@onlypreamble\bxjs@draft
\def\bxjs@draft#1{%
  \expandafter\let\expandafter\ifjsDraft\csname if#1\endcsname}
\DeclareOption{draft}{\bxjs@draft{true}\setlength\overfullrule{5pt}}
\DeclareOption{final}{\bxjs@draft{false}\setlength\overfullrule{0pt}}
\AtBeginDocument{%
  \expandafter\ifx\csname ifdraft\endcsname\relax
    \expandafter\let\csname ifdraft\expandafter\endcsname
     \csname ifjsDraft\endcsname
  \fi}
\newif\ifbxjs@papersize
\bxjs@papersizetrue
\DeclareOption{nopapersize}{\bxjs@papersizefalse}
\DeclareOption{papersize}{\bxjs@papersizetrue}
\newif\if@english
\@englishfalse
\DeclareOption{english}{\@englishtrue}
\mathchardef\bxjs@csta=259
\def\bxjs@invscale#1#2{%
  \bgroup \@tempdima=#1\relax \@tempdimb#2\p@\relax
    \@tempcnta\@tempdima \multiply\@tempcnta\@cclvi
    \divide\@tempcnta\@tempdimb \multiply\@tempcnta\@cclvi
    \@tempcntb\p@ \divide\@tempcntb\@tempdimb
    \advance\@tempcnta-\@tempcntb \advance\@tempcnta-\tw@
    \@tempdimb\@tempcnta\@ne
    \advance\@tempcnta\@tempcntb \advance\@tempcnta\@tempcntb
    \advance\@tempcnta\bxjs@csta \@tempdimc\@tempcnta\@ne
    \@whiledim\@tempdimb<\@tempdimc\do{%
      \@tempcntb\@tempdimb \advance\@tempcntb\@tempdimc
      \advance\@tempcntb\@ne \divide\@tempcntb\tw@
      \ifdim #2\@tempcntb>\@tempdima
        \advance\@tempcntb\m@ne \@tempdimc=\@tempcntb\@ne
      \else \@tempdimb=\@tempcntb\@ne \fi}%
    \xdef\bxjs@gtmpa{\the\@tempdimb}%
  \egroup #1=\bxjs@gtmpa\relax}
\let\bxjs@composite@proc\relax
\DeclareOption{pandoc}{%
  \def\bxjs@composite@proc{%
    \setkeys{bxjs}{ja=pandoc}%
    \let\bxjs@engine@given=*}%
  \def\bxjs@driver@opt{dvipdfmx-if-dvi}}
\DeclareOption{autodetect-engine}{%
  \let\bxjs@engine@given=*}
\DeclareOption{latex}{%
  \def\bxjs@engine@opt{latex}%
  \let\bxjs@engine@given=n}
\DeclareOption{platex}{%
  \def\bxjs@engine@opt{platex}%
  \let\bxjs@engine@given=j}
\DeclareOption{uplatex}{%
  \def\bxjs@engine@opt{uplatex}%
  \let\bxjs@engine@given=u}
\DeclareOption{xelatex}{%
  \def\bxjs@engine@opt{xelatex}%
  \let\bxjs@engine@given=x}
\DeclareOption{pdflatex}{%
  \def\bxjs@engine@opt{pdflatex}%
  \let\bxjs@engine@given=p}
\DeclareOption{lualatex}{%
  \def\bxjs@engine@opt{lualatex}%
  \let\bxjs@engine@given=l}
\let\bxjs@driver@@dvimode=0
\let\bxjs@driver@@dvipdfmx=1
\let\bxjs@driver@@pdfmode=2
\let\bxjs@driver@@xetex=3
\DeclareOption{dvips}{%
  \def\bxjs@driver@opt{dvips}%
  \let\bxjs@driver@given\bxjs@driver@@dvimode}
\DeclareOption{dviout}{%
  \def\bxjs@driver@opt{dviout}%
  \let\bxjs@driver@given\bxjs@driver@@dvimode}
\DeclareOption{xdvi}{%
  \def\bxjs@driver@opt{xdvi}%
  \let\bxjs@driver@given\bxjs@driver@@dvimode}
\DeclareOption{dvipdfmx}{%
  \def\bxjs@driver@opt{dvipdfmx}%
  \let\bxjs@driver@given\bxjs@driver@@dvipdfmx}
\DeclareOption{pdftex}{%
  \def\bxjs@driver@opt{pdftex}%
  \let\bxjs@driver@given\bxjs@driver@@pdfmode}
\DeclareOption{luatex}{%
  \def\bxjs@driver@opt{luatex}%
  \let\bxjs@driver@given\bxjs@driver@@pdfmode}
\DeclareOption{xetex}{%
  \def\bxjs@driver@opt{xetex}%
  \let\bxjs@driver@given\bxjs@driver@@xetex}
\DeclareOption{dvipdfmx-if-dvi}{%
  \def\bxjs@driver@opt{dvipdfmx-if-dvi}%
  \let\bxjs@driver@given\@undefined}
\newif\ifbxjs@usezw \bxjs@usezwtrue
\DeclareOption{nozw}{%
  \bxjs@usezwfalse}
\DeclareOption{zw}{%
  \bxjs@usezwtrue}
\newif\ifbxjs@disguise@js \bxjs@disguise@jstrue
\DeclareOption{nojs}{%
  \bxjs@disguise@jsfalse}
\DeclareOption{js}{%
  \bxjs@disguise@jstrue}
\newif\ifbxjs@precisetext
\DeclareOption{noprecisetext}{%
  \bxjs@precisetextfalse}
\DeclareOption{precisetext}{%
  \bxjs@precisetexttrue}
\newif\ifbxjs@simplejasetup \bxjs@simplejasetuptrue
\DeclareOption{nosimplejasetup}{%
  \bxjs@simplejasetupfalse}
\DeclareOption{simplejasetup}{%
  \bxjs@simplejasetuptrue}
\newif\ifbxjs@bigcode \bxjs@bigcodefalse
\edef\bxjs@tmpa{\expandafter\noexpand\csname\endcsname}
\def\bxjs@tmpb#1 #2#3\@nil{%
  \ifx1#2\bxjs@bigcodetrue \fi}
\expandafter\bxjs@tmpb\meaning\bxjs@tmpa1 0\@nil
\DeclareOption{nobigcode}{%
  \bxjs@bigcodefalse}
\DeclareOption{bigcode}{%
  \bxjs@bigcodetrue}
\def\bxjs@setkey{%
  \expandafter\bxjs@setkey@a\expandafter{\CurrentOption}}
\def\bxjs@setkey@a{\bxjs@safe@setkeys{bxjs}}
\DeclareOption*{\bxjs@setkey}
\def\bxjs@safe@setkeys#1#2{%
  \let\bxjs@KV@errx\KV@errx
  \let\KV@errx\bxjs@safe@setkeys@a
  \setkeys{#1}{#2}%
  \let\KV@errx\bxjs@KV@errx}
\def\bxjs@safe@setkeys@a#1{}
\newif\ifbxjs@scaleset
\def\jsScale{0.924715}
\def\Cjascale{\jsScale}
\define@key{bxjs}{base}{\bxjs@setbasefontsize{#1}}
\@onlypreamble\bxjs@do@opt@jbase
\let\bxjs@do@opt@jbase\relax
\define@key{bxjs}{jbase}{\bxjs@setjbasefontsize{#1}}
\def\bxjs@setjbasefontsize#1{%
  \def\bxjs@do@opt@jbase{%
    \bxjs@setbasefontlength\@tempdima{#1}%
    \bxjs@invscale\@tempdima\jsScale
    \bxjs@setbasefontsize{\@tempdima}}}
\define@key{bxjs}{scale}{%
  \bxjs@scalesettrue
  \edef\jsScale{#1}}
\DeclareOption{noscale}{%
  \bxjs@scalesettrue
  \def\jsScale{1}}
\DeclareOption{CJK}{%
  \ClassWarning\bxjs@clsname
  {Option `CJK' was abolished}}
\let\bxjs@param@mag\relax
\define@key{bxjs}{mag}{\edef\bxjs@param@mag{#1}}
\define@key{bxjs}{paper}{\edef\bxjs@param@paper{#1}}
\let\bxjs@jadriver\relax
\define@key{bxjs}{jadriver}{\edef\bxjs@jadriver{#1}}
\define@key{bxjs}{ja}[\relax]{%
  \ifx\relax#1\else\edef\bxjs@jadriver{#1}\fi}
\let\jsJaFont\@empty
\define@key{bxjs}{jafont}{\edef\jsJaFont{#1}}
\let\jsJaParam\@empty
\define@key{bxjs}{japaram}{\edef\jsJaParam{#1}}
\let\bxjs@magstyle@mag=m
\let\bxjs@magstyle@real=r
\let\bxjs@magstyle@xreal=x
\let\bxjs@magstyle@default\bxjs@magstyle@mag
\ifx l\jsEngine \ifnum\luatexversion>86
  \let\bxjs@magstyle@default\bxjs@magstyle@xreal
\fi\fi
\let\bxjs@magstyle\bxjs@magstyle@default
\define@key{bxjs}{magstyle}{%
  \expandafter\let\expandafter\bxjs@magstyle\csname
   bxjs@magstyle@#1\endcsname
  \ifx\bxjs@magstyle\relax
    \ClassError\bxjs@clsname
    {Invalid magstyle value `#1'}\@ehc
    \let\bxjs@magstyle\bxjs@magstyle@mag
  \fi}
\let\bxjs@ltx@removeelement\@removeelement
\def\@removeelement#1#2#3{%
  \def\reserved@a{#2}%
  \ifx\reserved@a\@empty \let#3\@empty
  \else \bxjs@ltx@removeelement{#1}{#2}{#3}%
  \fi}
\ExecuteOptions{a4paper,twoside,onecolumn,titlepage,openright,final}
\ProcessOptions\relax
\bxjs@composite@proc
\@onlypreamble\bxjs@purge@brace@elts
\def\bxjs@purge@brace@elts{%
  \def\bxjs@tmpa{\@gobble}%
  \expandafter\bxjs@purge@be@a\@classoptionslist,\@nil,%
  \let\@classoptionslist\bxjs@tmpa}
\@onlypreamble\bxjs@purge@be@a
\def\bxjs@purge@be@a#1,{%
  \ifx\@nil#1\relax\else
    \bxjs@purge@be@b#1{}\@nil
    \if@tempswa \edef\bxjs@tmpa{\bxjs@tmpa,#1}\fi
    \expandafter\bxjs@purge@be@a
  \fi}
\@onlypreamble\bxjs@purge@be@b
\def\bxjs@purge@be@b#1#{\bxjs@purge@be@c}
\@onlypreamble\bxjs@purge@be@c
\def\bxjs@purge@be@c#1\@nil{%
  \ifx\@nil#1\@nil \@tempswatrue \else \@tempswafalse \fi}
\bxjs@purge@brace@elts
\@expandtwoargs\@removeelement
  {papersize}\@classoptionslist\@classoptionslist
\@expandtwoargs\@removeelement
  {10pt}\@classoptionslist\@classoptionslist
\ifx\bxjs@jadriver\relax\else
  \let\bxjs@jadriver@given\bxjs@jadriver
\fi
\let\bxjs@tmpb\jsEngine
\ifx j\bxjs@tmpb\ifjsWithupTeX
  \let\bxjs@tmpb=u
\fi\fi
\ifx p\bxjs@tmpb\ifjsInPdfMode\else
  \let\bxjs@tmpb=n
\fi\fi
\ifx *\bxjs@engine@given
  \let\bxjs@engine@given\bxjs@tmpb
  \ifx j\bxjs@engine@given
    \g@addto@macro\@classoptionslist{,platex}
  \else\ifx u\bxjs@engine@given
    \g@addto@macro\@classoptionslist{,uplatex}
  \fi\fi
\fi
\ifx\bxjs@engine@given\@undefined\else
  \ifx\bxjs@engine@given\bxjs@tmpb\else
    \ClassError\bxjs@clsname%
    {Option `\bxjs@engine@opt' used on wrong engine}\@ehc
  \fi
\fi
\@tempswatrue
\ifx \bxjs@driver@given\@undefined\else
  \ifjsInPdfMode
    \ifx\bxjs@driver@given\bxjs@driver@@pdfmode\else
      \@tempswafalse
    \fi
  \else\ifx x\jsEngine
    \ifx\bxjs@driver@given\bxjs@driver@@xetex\else
      \@tempswafalse
    \fi
  \else
    \ifx\bxjs@driver@given\bxjs@driver@@pdfmode
      \@tempswafalse
    \else\ifx\bxjs@driver@given\bxjs@driver@@xetex
      \@tempswafalse
    \fi\fi
  \fi\fi
\fi
\if@tempswa\else
  \ClassError\bxjs@clsname%
  {Option `\bxjs@driver@opt' used on wrong engine}\@ehc
\fi
\ifjsInPdfMode \@tempswafalse
\else\ifx x\jsEngine \@tempswafalse
\else\ifx\bxjs@jadriver@given\@undefined \@tempswafalse
\else \@tempswatrue
\fi\fi\fi
\if@tempswa
  \ifx\bxjs@driver@opt\@undefined
    \ClassWarningNoLine\bxjs@clsname
    {No driver option is given}
  \fi
  \def\bxjs@tmpa{dvipdfmx-if-dvi}
  \ifx\bxjs@driver@opt\bxjs@tmpa
    \def\bxjs@driver@opt{dvipdfmx}
    \let\bxjs@driver@given\bxjs@driver@@dvipdfmx
    \g@addto@macro\@classoptionslist{,dvipdfmx}
  \fi
\fi
\def\bxjs@@minimal{minimal}
\ifx\bxjs@jadriver\relax
  \ifx j\jsEngine
    \def\bxjs@jadriver{standard}
  \else
    \let\bxjs@jadriver\bxjs@@minimal
  \fi
\fi
\ifx\bxjs@jadriver@given\@undefined\else
  \ifx\bxjs@engine@given\@undefined
    \ClassError\bxjs@clsname%
    {An engine option must be explicitly given}%
    {When you employ a Japanese-driver you must specify a
    correct\MessageBreak engine option.\MessageBreak\@ehc}
\fi\fi
\ifx\bxjs@magstyle@default\bxjs@magstyle@mag\else
  \ifx\bxjs@magstyle\bxjs@magstyle@mag
    \let\bxjs@magstyle\bxjs@magstyle@default
    \ClassError\bxjs@clsname%
    {The engine does not support 'magstyle=mag'}%
    {LuaTeX v0.87 or later no longer supports "mag" feature.\MessageBreak
     The default value is used instead.\MessageBreak \@ehc}
  \fi
\fi
\bxjs@do@opt@jbase
\if@slide
  \def\maybeblue{\@ifundefined{ver@color.sty}{}{\color{blue}}}
\fi
\if@landscape
  \setlength\@tempdima  {\paperheight}
  \setlength\paperheight{\paperwidth}
  \setlength\paperwidth {\@tempdima}
\fi
\if \if p\jsEngine T\else\if n\jsEngine T\else F\fi\fi T
  \@tempcnta="80 \loop \ifnum\@tempcnta<"100
    \catcode\@tempcnta\active
    \advance\@tempcnta\@ne
  \repeat
\fi
\ifbxjs@disguise@js
\def\bxjs@js@clsname{jsbook}
  \@namedef{ver@\bxjs@js@clsname.cls}{2001/01/01 (bxjs)}
\fi
\ifdim\bxjs@param@basefontsize<10pt \def\n@baseline{15}%
\else \def\n@baseline{16}\fi
\newif\ifbxjs@mag
\newif\ifbxjs@nfss@patch
\ifx\bxjs@magstyle\bxjs@magstyle@mag
  \bxjs@magtrue
\else\ifx\bxjs@magstyle\bxjs@magstyle@xreal
  \bxjs@nfss@patchtrue
\fi\fi
\ifx\bxjs@param@mag\relax
  \@tempdima=\bxjs@param@basefontsize
  \advance\@tempdima.001pt \multiply\@tempdima25
  \divide\@tempdima16384\relax \@tempcnta\@tempdima\relax
  \edef\bxjs@param@mag{\the\@tempcnta}
\else
  \let\c@bxjs@cnta\@tempcnta
  \setcounter{bxjs@cnta}{\bxjs@param@mag}
  \ifnum\@tempcnta<\z@ \@tempcnta=\z@ \fi
  \edef\bxjs@param@mag{\the\@tempcnta}
  \advance\@tempcnta100000
  \def\bxjs@tmpa#1#2#3#4#5\@nil{\@tempdima=#2#3#4.#5\p@}
  \expandafter\bxjs@tmpa\the\@tempcnta\@nil
  \edef\bxjs@param@basefontsize{\the\@tempdima}
\fi
\@tempcnta\bxjs@param@mag \advance\@tempcnta100000
\def\bxjs@tmpa#1#2#3#4\@nil{\@tempdima=#2#3.#4\p@}
\expandafter\bxjs@tmpa\the\@tempcnta\@nil
\edef\bxjs@real@mag{\strip@pt\@tempdima}
\let\jsBaseFontSize\bxjs@param@basefontsize
\ifbxjs@mag
  \let\bxjs@mpt\p@
  \catcode`\?=9 % \p@? read as \p@
\else
  \newdimen\bxjs@mpt
  \bxjs@mpt=\bxjs@real@mag \p@
  \catcode`\?=11 \let\p@?\bxjs@mpt
\fi
\chardef\bxjs@qmcc=\catcode`\?\relax
\newdimen\jsZw
\jsZw=10\bxjs@mpt \jsZw=\jsScale\jsZw
\ifbxjs@usezw
  \providecommand*\zw{\jsZw}
\fi
\ifbxjs@nfss@patch
\RequirePackage{type1cm}
\expandafter\let\csname OT1/cmr/m/n/10\endcsname\relax
\expandafter\let\csname OMX/cmex/m/n/10\endcsname\relax
\let\bxjs@get@external@font\get@external@font
\def\get@external@font{%
  \bxjs@preadjust@extract@font
  \bxjs@get@external@font}
\def\bxjs@fstrunc#1{%
  \edef\bxjs@tmpa{\strip@pt#1}%
  \expandafter\bxjs@fstrunc@a\bxjs@tmpa.****\@nil}
\def\bxjs@fstrunc@a#1.#2#3#4#5#6\@nil{%
  \if#5*\else
    \edef\bxjs@tmpa{#1%
    \ifnum#2#3>\z@ .#2\ifnum#3>\z@ #3\fi\fi}%
  \fi}
\def\bxjs@preadjust@extract@font{%
  \let\bxjs@req@size\f@size
  \dimen@\f@size\p@ \bxjs@invscale\dimen@\bxjs@real@mag
  \advance\dimen@.005pt\relax \bxjs@fstrunc\dimen@
  \let\bxjs@ref@size\bxjs@tmpa
  \let\f@size\bxjs@ref@size}
\def\execute@size@function#1{%
  \let\bxjs@cref@size\f@size
  \let\f@size\bxjs@req@size
  \csname s@fct@#1\endcsname}
\let\bxjs@DeclareErrorFont\DeclareErrorFont
\def\DeclareErrorFont#1#2#3#4#5{%
  \@tempdimc#5\p@ \@tempdimc\bxjs@real@mag\@tempdimc
  \edef\bxjs@tmpa{{#1}{#2}{#3}{#4}{\strip@pt\@tempdimc}}
  \expandafter\bxjs@DeclareErrorFont\bxjs@tmpa}
\def\gen@sfcnt{%
  \edef\mandatory@arg{\mandatory@arg\bxjs@cref@size}%
  \empty@sfcnt}
\def\genb@sfcnt{%
  \edef\mandatory@arg{%
    \mandatory@arg\expandafter\genb@x\bxjs@cref@size..\@@}%
  \empty@sfcnt}
\DeclareErrorFont{OT1}{cmr}{m}{n}{10}
\fi
\chardef\bxjs@periodchar=`\.
\def\@{\spacefactor\sfcode\bxjs@periodchar}
\def\bxjs@tmpa{\def\set@fontsize##1##2##3}
\expandafter\bxjs@tmpa\expandafter{%
  \set@fontsize{#1}{#2}{#3}%
  \expandafter\def\expandafter\size@update\expandafter{%
    \size@update
    \jsFontSizeChanged}%
}
\newcommand*\jsFontSizeChanged{%
  \jsZw=\f@size\p@
  \jsZw=\jsScale \jsZw
  \ifdim\parindent>\z@
    \if@english \parindent=1em
    \else       \parindent=1\jsZw
    \fi
  \fi\relax
  \jsResetDimen}
\newcommand*\jsResetDimen{}
\ifbxjs@mag
  \let\bxjs@setfontsize\@setfontsize
\else
  \def\bxjs@setfontsize#1#2#3{%
    \@setfontsize#1{#2\bxjs@mpt}{#3\bxjs@mpt}}
\fi
\emergencystretch 3\jsZw
\newif\ifnarrowbaselines
\if@english
  \narrowbaselinestrue
\fi
\def\narrowbaselines{%
  \narrowbaselinestrue
  \skip0=\abovedisplayskip
  \skip2=\abovedisplayshortskip
  \skip4=\belowdisplayskip
  \skip6=\belowdisplayshortskip
  \let\bxjs@ltx@nomath\@nomath
  \let\@nomath\@gobble
  \@currsize\selectfont
  \let\@nomath\bxjs@ltx@nomath
  \abovedisplayskip=\skip0
  \abovedisplayshortskip=\skip2
  \belowdisplayskip=\skip4
  \belowdisplayshortskip=\skip6\relax}
\def\widebaselines{\narrowbaselinesfalse\@currsize\selectfont}
\def\bxjs@if@narrowbaselines{%
  \ifnarrowbaselines\expandafter\@firstoftwo
  \else \expandafter\@secondoftwo
  \fi
}
\renewcommand{\normalsize}{%
  \bxjs@if@narrowbaselines{%
    \bxjs@setfontsize\normalsize\@xpt\@xiipt
  }{%else
    \bxjs@setfontsize\normalsize\@xpt{\n@baseline}%
  }%
  \abovedisplayskip 11\p@? \@plus3\p@? \@minus4\p@?
  \abovedisplayshortskip \z@ \@plus3\p@?
  \belowdisplayskip 9\p@? \@plus3\p@? \@minus4\p@?
  \belowdisplayshortskip \belowdisplayskip
  \let\@listi\@listI}
\normalsize
\ifx\Cht\@undefined \newdimen\Cht \fi
\ifx\Cdp\@undefined \newdimen\Cdp \fi
\ifx\Cwd\@undefined \newdimen\Cwd \fi
\ifx\Cvs\@undefined \newdimen\Cvs \fi
\ifx\Chs\@undefined \newdimen\Chs \fi
\setlength\Cht{0.88\jsZw}
\setlength\Cdp{0.12\jsZw}
\setlength\Cwd{1\jsZw}
\setlength\Cvs{\baselineskip}
\setlength\Chs{1\jsZw}
\newcommand{\small}{%
  \bxjs@if@narrowbaselines{%
    \bxjs@setfontsize\small\@ixpt{11}%
  }{%else
    \bxjs@setfontsize\small\@ixpt{13}%
  }%
  \abovedisplayskip 9\p@? \@plus3\p@? \@minus4\p@?
  \abovedisplayshortskip  \z@ \@plus3\p@?
  \belowdisplayskip \abovedisplayskip
  \belowdisplayshortskip \belowdisplayskip
  \def\@listi{\leftmargin\leftmargini
              \topsep \z@
              \parsep \z@
              \itemsep \parsep}}
\newcommand{\footnotesize}{%
  \bxjs@if@narrowbaselines{%
    \bxjs@setfontsize\footnotesize\@viiipt{9.5}%
  }{%else
    \bxjs@setfontsize\footnotesize\@viiipt{11}%
  }%
  \abovedisplayskip 6\p@? \@plus2\p@? \@minus3\p@?
  \abovedisplayshortskip  \z@ \@plus2\p@?
  \belowdisplayskip \abovedisplayskip
  \belowdisplayshortskip \belowdisplayskip
  \def\@listi{\leftmargin\leftmargini
              \topsep \z@
              \parsep \z@
              \itemsep \parsep}}
\newcommand{\scriptsize}{\bxjs@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand{\tiny}{\bxjs@setfontsize\tiny\@vpt\@vipt}
\if@twocolumn
  \newcommand{\large}{\bxjs@setfontsize\large\@xiipt{\n@baseline}}
\else
  \newcommand{\large}{\bxjs@setfontsize\large\@xiipt{17}}
\fi
\newcommand{\Large}{\bxjs@setfontsize\Large\@xivpt{21}}
\newcommand{\LARGE}{\bxjs@setfontsize\LARGE\@xviipt{25}}
\newcommand{\huge}{\bxjs@setfontsize\huge\@xxpt{28}}
\newcommand{\Huge}{\bxjs@setfontsize\Huge\@xxvpt{33}}
\newcommand{\HUGE}{\bxjs@setfontsize\HUGE{30}{40}}
\everydisplay=\expandafter{\the\everydisplay \narrowbaselines}
\newcommand{\headfont}{\sffamily}
\setlength\columnsep{2\Cwd}
\setlength\columnseprule{0\p@}
\setlength\lineskip{1\p@?}
\setlength\normallineskip{1\p@?}
\setlength\lineskiplimit{1\p@?}
\setlength\normallineskiplimit{1\p@?}
\renewcommand{\baselinestretch}{}
\setlength\parskip{0\p@}
\if@slide
  \setlength\parindent{0\p@}
\else
  \setlength\parindent{1\Cwd}
\fi
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\ifbxjs@mag
\mag=\bxjs@param@mag
\fi
\setlength{\topskip}{10\p@?}
\def\bxjs@read@a{\futurelet\bxjs@tmpa\bxjs@read@b}
\def\bxjs@read@b{%
  \ifx\bxjs@tmpa\bgroup \expandafter\bxjs@read@c
  \else \expandafter\bxjs@read@d \fi}
\def\bxjs@read@c#1#2#3\@nil{\def\bxjs@param@paper{papersize={#1,#2}}}
\def\bxjs@read@d#1\@nil{}
\expandafter\bxjs@read@a\bxjs@param@paper\@nil
\edef\bxjs@layout@paper{%
  \ifbxjs@mag truedimen,\fi
  \if@landscape landscape,\fi
  \bxjs@param@paper}
\def\bxjs@layout{%
  headheight=\topskip,headsep=17.07164\p@?,nofoot,includeheadfoot,%
  hmargin=102.42992\p@?,hmarginratio=1:1,%
  vscale=0.83,vmarginratio=1:1,%
}
\newdimen\fullwidth
\newcommand\jsTextWidthLimit{40}
\def\bxjs@postproc@layout{%
  \let\Gm@driver\bxjs@geometry@driver
  \@tempdimb=\textwidth
  \if@twocolumn \@tempdima=2\Cwd \else \@tempdima=1\Cwd \fi
  \divide\textwidth\@tempdima \multiply\textwidth\@tempdima
  \advance\@tempdimb-\textwidth
  \advance\oddsidemargin 0.5\@tempdimb
  \advance\evensidemargin 0.5\@tempdimb
  \fullwidth=\textwidth
  \ifdim\textwidth>\jsTextWidthLimit\Cwd
    \textwidth=\jsTextWidthLimit\Cwd
    \addtolength\evensidemargin{\fullwidth-\textwidth}
  \fi
  \@tempdimb=\textheight
  \advance\textheight-\topskip
  \divide\textheight\baselineskip \multiply\textheight\baselineskip
  \advance\textheight\topskip
  \advance\@tempdimb-\textheight
  \advance\topmargin0.5\@tempdimb
  \@tempdima=\topskip
  \advance\headheight\@tempdima
  \advance\topmargin-\@tempdima
  \setlength\marginparsep{\columnsep}
  \setlength\marginparpush{\baselineskip}
  \setlength\marginparwidth{\paperwidth-\oddsidemargin-1truein%
      -\textwidth-1cm-\marginparsep}
  \divide\marginparwidth\Cwd \multiply\marginparwidth\Cwd
  \maxdepth=.5\topskip
}
\@onlypreamble\bxjs@revert
\let\bxjs@revert\@empty
\edef\bxjs@tmpa{\the\ht\strutbox}
\ht\strutbox=10\p@?
\g@addto@macro\bxjs@revert{\ht\strutbox=\bxjs@tmpa\relax}
\if x\jsEngine
  \ifx\pdfpagewidth\@undefined
    \def\bxjs@Gm@driver{dvipdfm}
  \else
    \def\bxjs@Gm@driver{pdftex}
    \ifx\pdfhorigin\@undefined \newdimen\pdfhorigin \fi
    \ifx\pdfvorigin\@undefined \newdimen\pdfvorigin \fi
  \fi
  \let\bxjs@InputIfFileExists\InputIfFileExists
  \g@addto@macro\bxjs@revert{\let\InputIfFileExists\bxjs@InputIfFileExists}
  \def\InputIfFileExists#1#2#3{%
    \bxjs@InputIfFileExists{#1}{#2}{#3}%
    \edef\Gm@checkdrivers{\noexpand\Gm@setdriver{\bxjs@Gm@driver}}}%
\fi
\ifbxjs@papersize
  \ifx\bxjs@driver@given\bxjs@driver@@dvipdfmx
    \PassOptionsToPackage{dvipdfm}{geometry}
  \fi
  \let\bxPapersizeSpecialDone=t
\else
  \PassOptionsToPackage{driver=none}{geometry}
\fi
\edef\bxjs@nxt{%
  \noexpand\RequirePackage[\bxjs@layout@paper,\bxjs@layout]{geometry}}
\AtBeginDocument{\ImposeOldLuaTeXBehavior}
\bxjs@nxt \bxjs@revert
\AtBeginDocument{\RevokeOldLuaTeXBehavior}
\let\bxjs@geometry@driver\Gm@driver
\bxjs@postproc@layout
\def\setpagelayout{\@ifstar
  {\bxjs@reset@layout}{\bxjs@modify@layout}}
\def\bxjs@modify@layout#1{%
  \edef\bxjs@nxt{\noexpand\geometry{#1,truedimen}}%
  \bxjs@nxt\bxjs@postproc@layout}
\def\bxjs@reset@layout#1{%
  \edef\bxjs@nxt{\noexpand\geometry{reset,\bxjs@layout@paper,#1,truedimen}}%
  \bxjs@nxt\bxjs@postproc@layout}
\footnotesep=11\p@? \footnotesep=0.7\footnotesep
\setlength{\skip\footins}{16\p@? \@plus 5\p@? \@minus 2\p@?}
\setcounter{topnumber}{9}
\renewcommand{\topfraction}{.85}
\setcounter{bottomnumber}{9}
\renewcommand{\bottomfraction}{.8}
\setcounter{totalnumber}{20}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.8}
\setcounter{dbltopnumber}{9}
\renewcommand{\dbltopfraction}{.8}
\renewcommand{\dblfloatpagefraction}{.8}
\setlength\floatsep    {12\p@? \@plus 2\p@? \@minus 2\p@?}
\setlength\textfloatsep{20\p@? \@plus 2\p@? \@minus 4\p@?}
\setlength\intextsep   {12\p@? \@plus 2\p@? \@minus 2\p@?}
\setlength\dblfloatsep    {12\p@? \@plus 2\p@? \@minus 2\p@?}
\setlength\dbltextfloatsep{20\p@? \@plus 2\p@? \@minus 4\p@?}
\setlength\@fptop{0\p@? \@plus 1fil}
\setlength\@fpsep{8\p@? \@plus 2fil}
\setlength\@fpbot{0\p@? \@plus 1fil}
\setlength\@dblfptop{0\p@? \@plus 1fil}
\setlength\@dblfpsep{8\p@? \@plus 2fil}
\setlength\@dblfpbot{0\p@? \@plus 1fil}
\def\ps@plainfoot{%
  \let\@mkboth\@gobbletwo
  \let\@oddhead\@empty
  \def\@oddfoot{\normalfont\hfil\thepage\hfil}%
  \let\@evenhead\@empty
  \let\@evenfoot\@oddfoot}
\def\ps@plainhead{%
  \let\@mkboth\@gobbletwo
  \let\@oddfoot\@empty
  \let\@evenfoot\@empty
  \def\@evenhead{%
    \if@mparswitch \hss \fi
    \hbox to \fullwidth{\textbf{\thepage}\hfil}%
    \if@mparswitch\else \hss \fi}%
  \def\@oddhead{%
    \hbox to \fullwidth{\hfil\textbf{\thepage}}\hss}}
\let\ps@plain\ps@plainhead
\newif\if@omit@number
\def\ps@headings{%
  \let\@oddfoot\@empty
  \let\@evenfoot\@empty
  \def\@evenhead{%
    \if@mparswitch \hss \fi
    \underline{\hbox to \fullwidth{\autoxspacing
        \textbf{\thepage}\hfil\leftmark}}%
    \if@mparswitch\else \hss \fi}%
  \def\@oddhead{\underline{\hbox to \fullwidth{\autoxspacing
        {\if@twoside\rightmark\else\leftmark\fi}\hfil\textbf{\thepage}}}\hss}%
  \let\@mkboth\markboth
  \def\chaptermark##1{\markboth{%
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \if@omit@number\else
          \@chapapp\thechapter\@chappos\hskip1\jsZw
        \fi
      \fi
    \fi
    ##1}{}}%
  \def\sectionmark##1{\markright{%
    \ifnum \c@secnumdepth >\z@ \thesection \hskip1\jsZw\fi
    ##1}}}%
\def\ps@myheadings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{%
    \if@mparswitch \hss \fi%
    \hbox to \fullwidth{\thepage\hfil\leftmark}%
    \if@mparswitch\else \hss \fi}%
  \def\@oddhead{%
    \hbox to \fullwidth{\rightmark\hfil\thepage}\hss}%
  \let\@mkboth\@gobbletwo
  \let\chaptermark\@gobble
  \let\sectionmark\@gobble
}
\newcommand*{\jsSubtitle}[1]{\gdef\bxjs@subtitle{#1}}
\renewcommand*{\title}[1]{\bxjs@decl@subtitle\gdef\@title{#1}}
\AtBeginDocument{\bxjs@decl@subtitle}
\def\bxjs@decl@subtitle{%
  \global\let\bxjs@decl@subtitle\relax
  \ifx\subtitle\@undefined
    \global\let\subtitle\jsSubtitle
  \fi}
\def\bxjs@annihilate@subtitle{%
  \ifx\subtitle\jsSubtitle \global\let\subtitle\relax \fi
  \global\let\jsSubtitle\relax}
\def\plainifnotempty{%
  \ifx \@oddhead \@empty
    \ifx \@oddfoot \@empty
    \else
      \thispagestyle{plainfoot}%
    \fi
  \else
    \thispagestyle{plainhead}%
  \fi}
\if@titlepage
  \newcommand{\maketitle}{%
    \begin{titlepage}%
      \let\footnotesize\small
      \let\footnoterule\relax
      \let\footnote\thanks
      \null\vfil
      \if@slide
        {\footnotesize \@date}%
        \begin{center}
          \mbox{} \\[1\jsZw]
          \large
          {\maybeblue\hrule height0\p@? depth2\p@?\relax}\par
          \smallskip
          \@title
          \ifx\bxjs@subtitle\@undefined\else
            \par\vskip\z@
            {\small \bxjs@subtitle\par}
          \fi
          \smallskip
          {\maybeblue\hrule height0\p@? depth2\p@?\relax}\par
          \vfill
          {\small \@author}%
        \end{center}
      \else
      \vskip 60\p@?
      \begin{center}%
        {\LARGE \@title \par}%
        \ifx\bxjs@subtitle\@undefined\else
          \vskip5\p@?
          {\normalsize \bxjs@subtitle\par}
        \fi
        \vskip 3em%
        {\large
          \lineskip .75em
          \begin{tabular}[t]{c}%
            \@author
          \end{tabular}\par}%
        \vskip 1.5em
        {\large \@date \par}%
      \end{center}%
      \fi
      \par
      \@thanks\vfil\null
    \end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\date\relax
    \global\let\and\relax
    \bxjs@annihilate@subtitle
  }%
\else
  \newcommand{\maketitle}{\par
    \begingroup
      \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
      \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
      \long\def\@makefntext##1{\advance\leftskip 3\jsZw
        \parindent 1\jsZw\noindent
        \llap{\@textsuperscript{\normalfont\@thefnmark}\hskip0.3\jsZw}##1}%
      \if@twocolumn
        \ifnum \col@number=\@ne
          \@maketitle
        \else
          \twocolumn[\@maketitle]%
        \fi
      \else
        \newpage
        \global\@topnum\z@  % Prevents figures from going at top of page.
        \@maketitle
      \fi
      \plainifnotempty
      \@thanks
    \endgroup
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\date\relax
    \global\let\and\relax
    \bxjs@annihilate@subtitle
  }
  \def\@maketitle{%
    \newpage\null
    \vskip 2em
    \begin{center}%
      \let\footnote\thanks
      {\LARGE \@title \par}%
      \ifx\bxjs@subtitle\@undefined\else
        \vskip3\p@?
        {\normalsize \bxjs@subtitle\par}
      \fi
      \vskip 1.5em
      {\large
        \lineskip .5em
        \begin{tabular}[t]{c}%
          \@author
        \end{tabular}\par}%
      \vskip 1em
      {\large \@date}%
    \end{center}%
    \par\vskip 1.5em
  }
\fi
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \if@english \@afterindentfalse \else \@afterindenttrue \fi
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty
    \ifdim \@tempskipa >\z@
      \if@slide\else
        \null
        \vspace*{-\baselineskip}%
      \fi
      \vskip\@tempskipa
    \fi
  \fi
  \noindent
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa<\z@
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}% 目次にフルネームを載せるなら #8
  \else
    \begingroup
      \interlinepenalty \@M % 下から移動
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
        #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}% 目次にフルネームを載せるならここは #8
  \fi
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa<\z@
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
        \bxjs@ltj@inhibitglue
      \else
        \clubpenalty \@clubpenalty
        \everypar{\everyparhook}%
      \fi\everyparhook}%
  \else
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \fi
  \if@slide
    {\vskip-6\p@?\maybeblue\hrule height0\p@? depth1\p@?\vskip7\p@?\relax}%
  \fi
  \par  % 2000-12-18
  \ignorespaces}
\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa<\z@
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \else
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \fi
  \@xsect{#3}}
\let\bxjs@ltj@inhibitglue\@empty
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand{\thepart}{\@Roman\c@part}
\renewcommand{\thechapter}{\@arabic\c@chapter}
\renewcommand{\thesection}{\thechapter.\@arabic\c@section}
\renewcommand{\thesubsection}{\thesection.\@arabic\c@subsection}
\renewcommand{\thesubsubsection}{%
   \thesubsection.\@arabic\c@subsubsection}
\renewcommand{\theparagraph}{%
   \thesubsubsection.\@arabic\c@paragraph}
\renewcommand{\thesubparagraph}{%
   \theparagraph.\@arabic\c@subparagraph}
\newcommand{\@chapapp}{\prechaptername}
\newcommand{\@chappos}{\postchaptername}
\newcommand\frontmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}% 欧文用標準スタイルでは plain
  \if@twocolumn
    \onecolumn
    \@restonecoltrue
  \else
    \@restonecolfalse
  \fi
  \null\vfil
  \secdef\@part\@spart}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{%
      \prepartname\thepart\postpartname\hspace{1\jsZw}#1}%
  \else
    \addcontentsline{toc}{part}{#1}%
  \fi
  \markboth{}{}%
  {\centering
    \interlinepenalty \@M
    \normalfont
    \ifnum \c@secnumdepth >-2\relax
      \huge\headfont \prepartname\thepart\postpartname
      \par\vskip20\p@?
    \fi
    \Huge \headfont #2\par}%
  \@endpart}
\def\@spart#1{{%
    \centering
    \interlinepenalty \@M
    \normalfont
    \Huge \headfont #1\par}%
  \@endpart}
\def\@endpart{\vfil\newpage
  \if@twoside
    \null
    \thispagestyle{empty}%
    \newpage
  \fi
  \if@restonecol
    \twocolumn
  \fi}
\newcommand{\chapter}{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \plainifnotempty % 元: \thispagestyle{plain}
  \global\@topnum\z@
  \if@english \@afterindentfalse \else \@afterindenttrue \fi
  \secdef
    {\@omit@numberfalse\@chapter}%
    {\@omit@numbertrue\@schapter}}
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\@chapapp\thechapter\@chappos}%
      \addcontentsline{toc}{chapter}%
        {\protect\numberline
        {\@chapapp\thechapter\@chappos}%
        #1}%
    \else\addcontentsline{toc}{chapter}{#1}\fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi}
\def\@makechapterhead#1{%
  \vspace*{2\Cvs}% 欧文は50pt
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\headfont \@chapapp\thechapter\@chappos
        \par\nobreak
        \vskip \Cvs % 欧文は20pt
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \headfont #1\par\nobreak
    \vskip 3\Cvs}} % 欧文は40pt
\def\@schapter#1{%
  \chaptermark{#1}%
  \if@twocolumn
    \@topnewpage[\@makeschapterhead{#1}]%
  \else
    \@makeschapterhead{#1}\@afterheading
  \fi}
\def\@makeschapterhead#1{%
  \vspace*{2\Cvs}% 欧文は50pt
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \headfont #1\par\nobreak
    \vskip 3\Cvs}} % 欧文は40pt
\if@twocolumn
  \newcommand{\section}{%
    \@startsection{section}{1}{\z@}%
    {0.6\Cvs}{0.4\Cvs}%
    {\normalfont\large\headfont\raggedright}}
\else
  \newcommand{\section}{%
    \if@slide\clearpage\fi
    \@startsection{section}{1}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
    {.5\Cvs \@plus.3\Cdp}% 後アキ
    {\normalfont\Large\headfont\raggedright}}
\fi
\if@twocolumn
  \newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
    {\z@}{\z@}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
    {.5\Cvs \@plus.3\Cdp}% 後アキ
    {\normalfont\large\headfont}}
\fi
\if@twocolumn
  \newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {\z@}{\z@}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
    {\z@}%
    {\normalfont\normalsize\headfont}}
\fi
\newcommand\jsParagraphMark{\jsJaChar{■}}
\let\jsJaChar\@empty
\if@twocolumn
  \newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
    {\z@}{-1\jsZw}% 改行せず 1\jsZw のアキ
    {\normalfont\normalsize\headfont\jsParagraphMark}}
\else
  \newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
    {0.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
    {-1\jsZw}% 改行せず 1\jsZw のアキ
    {\normalfont\normalsize\headfont\jsParagraphMark}}
\fi
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
   {\z@}{-1\jsZw}%
   {\normalfont\normalsize\headfont}}
\if@slide
  \setlength\leftmargini{1\jsZw}
\else
  \if@twocolumn
    \setlength\leftmargini{2\jsZw}
  \else
    \setlength\leftmargini{3\jsZw}
  \fi
\fi
\if@slide
  \setlength\leftmarginii {1\jsZw}
  \setlength\leftmarginiii{1\jsZw}
  \setlength\leftmarginiv {1\jsZw}
  \setlength\leftmarginv  {1\jsZw}
  \setlength\leftmarginvi {1\jsZw}
\else
  \setlength\leftmarginii {2\jsZw}
  \setlength\leftmarginiii{2\jsZw}
  \setlength\leftmarginiv {2\jsZw}
  \setlength\leftmarginv  {1\jsZw}
  \setlength\leftmarginvi {1\jsZw}
\fi
\setlength  \labelsep  {0.5\jsZw} % .5em
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength\partopsep{\z@} % {2\p@ \@plus 1\p@ \@minus 1\p@}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listi{\leftmargin\leftmargini
  \parsep \z@
  \topsep 0.5\baselineskip
  \itemsep \z@ \relax}
\let\@listI\@listi
\@listi
\def\@listii{\leftmargin\leftmarginii
  \labelwidth\leftmarginii \advance\labelwidth-\labelsep
  \topsep \z@
  \parsep \z@
  \itemsep\parsep}
\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii \advance\labelwidth-\labelsep
  \topsep \z@
  \parsep \z@
  \itemsep\parsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\renewcommand{\theenumi}{\@arabic\c@enumi}
\renewcommand{\theenumii}{\@alph\c@enumii}
\renewcommand{\theenumiii}{\@roman\c@enumiii}
\renewcommand{\theenumiv}{\@Alph\c@enumiv}
\def\bxjs@dust{\vrule\@width\z@\@height\z@\@depth\z@}
\newcommand*{\jsInJaParen}[1]{%
  \bxjs@dust\jsInhibitGlue（\theenumii）\jsInhibitGlue\bxjs@dust}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{\jsInJaParen{（\theenumii）}}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi\jsInhibitGlue（\theenumii）}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}{%
  \list{}{%
    \labelwidth=\leftmargin
    \labelsep=1\jsZw
    \advance \labelwidth by -\labelsep
    \let \makelabel=\descriptionlabel}}{\endlist}
\newcommand*\descriptionlabel[1]{\normalfont\headfont #1\hfil}
\newenvironment{abstract}{%
  \begin{list}{}{%
    \listparindent=1\jsZw
    \itemindent=\listparindent
    \rightmargin=\z@
    \leftmargin=5\jsZw}\item[]}{\end{list}\vspace{\baselineskip}}
\newenvironment{verse}{%
  \let \\=\@centercr
  \list{}{%
    \itemsep \z@
    \itemindent -2\jsZw % 元: -1.5em
    \listparindent\itemindent
    \rightmargin \z@
    \advance\leftmargin 2\jsZw}% 元: 1.5em
  \item\relax}{\endlist}
\newenvironment{quotation}{%
  \list{}{%
    \listparindent\parindent
    \itemindent\listparindent
    \rightmargin \z@}%
  \item\relax}{\endlist}
\newenvironment{quote}%
  {\list{}{\rightmargin\z@}\item\relax}{\endlist}
\def\@begintheorem#1#2{\trivlist\labelsep=1\jsZw
   \item[\hskip \labelsep{\headfont #1\ #2}]}
\def\@opargbegintheorem#1#2#3{\trivlist\labelsep=1\jsZw
      \item[\hskip \labelsep{\headfont #1\ #2（#3）}]}
\newenvironment{titlepage}{%
    \cleardoublepage
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse\newpage
    \fi
    \thispagestyle{empty}%
    \setcounter{page}\@ne
  }%
  {\if@restonecol\twocolumn \else \newpage \fi
    \if@twoside\else
      \setcounter{page}\@ne
    \fi}
\newcommand{\appendix}{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\@chappos{}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@?}
\setlength\tabcolsep{6\p@?}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@?}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreak\thefigure}
\newenvironment{figure}%
               {\@float{figure}}%
               {\end@float}
\newenvironment{figure*}%
               {\@dblfloat{figure}}%
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreak\thetable}
\newenvironment{table}%
               {\@float{table}}%
               {\end@float}
\newenvironment{table*}%
               {\@dblfloat{table}}%
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{5\p@?} % 元: 10\p@
\setlength\belowcaptionskip{5\p@?} % 元: 0\p@
\long\def\@makecaption#1#2{{\small
  \advance\leftskip .0628\linewidth
  \advance\rightskip .0628\linewidth
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1\hskip1\jsZw\relax #2}%
  \ifdim \wd\@tempboxa <\hsize \centering \fi
  #1\hskip1\jsZw\relax #2\par
  \vskip\belowcaptionskip}}
\DeclareOldFontCommand{\mc}{\normalfont\mcfamily}{\mathmc}
\DeclareOldFontCommand{\gt}{\normalfont\gtfamily}{\mathgt}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{1}
\newdimen\js@tocl@width
\newcommand{\tableofcontents}{%
  \settowidth\js@tocl@width{\headfont\prechaptername\postchaptername}%
  \settowidth\@tempdima{\headfont\appendixname}%
  \ifdim\js@tocl@width<\@tempdima \setlength\js@tocl@width{\@tempdima}\fi
  \ifdim\js@tocl@width<2\jsZw \divide\js@tocl@width by 2 \advance\js@tocl@width 1\jsZw\fi
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\contentsname}%
  \@mkboth{\contentsname}{}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}
\newcommand*{\l@part}[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@?}%
    \begingroup
      \parindent \z@
      \rightskip \@tocrmarg
      \parfillskip -\rightskip
      {\leavevmode
        \large \headfont
        \setlength\@lnumwidth{4\jsZw}%
        #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
      \nobreak
    \global\@nobreaktrue
    \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \addvspace{1.0em \@plus\p@?}
    \begingroup
      \parindent\z@
      \rightskip\@tocrmarg
      \parfillskip-\rightskip
      \leavevmode\headfont
      \setlength\@lnumwidth{\js@tocl@width}\advance\@lnumwidth 2.683\jsZw
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
 % \newcommand*{\l@section}{\@dottedtocline{1}{1\jsZw}{3.683\jsZw}}
\newcommand*{\l@section}{%
          \@tempdima\js@tocl@width \advance\@tempdima -1\jsZw
          \@dottedtocline{1}{\@tempdima}{3.683\jsZw}}
\newcommand*{\l@subsection}{%
          \@tempdima\js@tocl@width \advance\@tempdima 2.683\jsZw
          \@dottedtocline{2}{\@tempdima}{3.5\jsZw}}
\newcommand*{\l@subsubsection}{%
          \@tempdima\js@tocl@width \advance\@tempdima 6.183\jsZw
          \@dottedtocline{3}{\@tempdima}{4.5\jsZw}}
\newcommand*{\l@paragraph}{%
          \@tempdima\js@tocl@width \advance\@tempdima 10.683\jsZw
          \@dottedtocline{4}{\@tempdima}{5.5\jsZw}}
\newcommand*{\l@subparagraph}{%
          \@tempdima\js@tocl@width \advance\@tempdima 16.183\jsZw
          \@dottedtocline{5}{\@tempdima}{6.5\jsZw}}
\newdimen\@lnumwidth
\def\numberline#1{\hb@xt@\@lnumwidth{#1\hfil}\hspace{0pt}}
\def\@dottedtocline#1#2#3#4#5{\ifnum #1>\c@tocdepth \else
  \vskip \z@ \@plus.2\p@?
  {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
   \interlinepenalty\@M
   \leavevmode
   \@lnumwidth #3\relax
   \advance\leftskip \@lnumwidth \null\nobreak\hskip -\leftskip
    {#4}\nobreak
    \leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
       mu$}\hfill \nobreak\hb@xt@\@pnumwidth{%
         \hfil\normalfont \normalcolor #5}\par}\fi}
\newcommand{\listoffigures}{%
  \if@twocolumn\@restonecoltrue\onecolumn
  \else\@restonecolfalse\fi
  \chapter*{\listfigurename}%
  \@mkboth{\listfigurename}{}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
}
\newcommand*{\l@figure}{\@dottedtocline{1}{1\jsZw}{3.683\jsZw}}
\newcommand{\listoftables}{%
  \if@twocolumn\@restonecoltrue\onecolumn
  \else\@restonecolfalse\fi
  \chapter*{\listtablename}%
  \@mkboth{\listtablename}{}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
}
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{2\jsZw}
\newenvironment{thebibliography}[1]{%
  \global\let\presectionname\relax
  \global\let\postsectionname\relax
  \chapter*{\bibname}\@mkboth{\bibname}{}%
  \addcontentsline{toc}{chapter}{\bibname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\newcommand{\newblock}{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}{% 索引を3段組で出力する環境
    \if@twocolumn
      \onecolumn\@restonecolfalse
    \else
      \clearpage\@restonecoltrue
    \fi
    \columnseprule.4pt \columnsep 2\jsZw
    \ifx\multicols\@undefined
      \twocolumn[\@makeschapterhead{\indexname}%
      \addcontentsline{toc}{chapter}{\indexname}]%
    \else
      \ifdim\textwidth<\fullwidth
        \setlength{\evensidemargin}{\oddsidemargin}
        \setlength{\textwidth}{\fullwidth}
        \setlength{\linewidth}{\fullwidth}
        \begin{multicols}{3}[\chapter*{\indexname}%
        \addcontentsline{toc}{chapter}{\indexname}]%
      \else
        \begin{multicols}{2}[\chapter*{\indexname}%
        \addcontentsline{toc}{chapter}{\indexname}]%
      \fi
    \fi
    \@mkboth{\indexname}{}%
    \plainifnotempty % \thispagestyle{plain}
    \parindent\z@
    \parskip\z@ \@plus .3\p@?\relax
    \let\item\@idxitem
    \raggedright
    \footnotesize\narrowbaselines
  }{
    \ifx\multicols\@undefined
      \if@restonecol\onecolumn\fi
    \else
      \end{multicols}
    \fi
    \clearpage
  }
\newcommand{\@idxitem}{\par\hangindent 4\jsZw} % 元 40pt
\newcommand{\subitem}{\@idxitem \hspace*{2\jsZw}} % 元 20pt
\newcommand{\subsubitem}{\@idxitem \hspace*{3\jsZw}} % 元 30pt
\newcommand{\indexspace}{\par \vskip 10\p@? \@plus5\p@? \@minus3\p@?\relax}
\newcommand\seename{\if@english see\else →\fi}
\newcommand\alsoname{\if@english see also\else →\fi}
\let\footnotes@ve=\footnote
\def\footnote{\jsInhibitGlue\footnotes@ve}
\let\footnotemarks@ve=\footnotemark
\def\footnotemark{\jsInhibitGlue\footnotemarks@ve}
\def\thefootnote{\ifnum\c@footnote>\z@\leavevmode\lower.5ex\hbox{*}\@arabic\c@footnote\fi}
\renewcommand{\footnoterule}{%
  \kern-3\p@?
  \hrule width .4\columnwidth
  \kern 2.6\p@?}
\@addtoreset{footnote}{chapter}
\long\def\@footnotetext{%
  \insert\footins\bgroup
    \normalfont\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{%
       \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces}%
      \futurelet\next\fo@t}
\def\fo@t{\ifcat\bgroup\noexpand\next \let\next\f@@t
                                \else \let\next\f@t\fi \next}
\def\f@@t{\bgroup\aftergroup\@foot\let\next}
\def\f@t#1{#1\@foot}
\def\@foot{\@finalstrut\strutbox\color@endgroup\egroup}
\newcommand\@makefntext[1]{%
  \advance\leftskip 3\jsZw
  \parindent 1\jsZw
  \noindent
  \llap{\@makefnmark\hskip0.3\jsZw}#1}
\let\jsInhibitGlueAtParTop\@empty
\def\everyparhook{\jsInhibitGlueAtParTop}
\AtBeginDocument{\everypar{\everyparhook}}
\def\@inhibitglue{%
  \futurelet\@let@token\@@inhibitglue}
\def\@@inhibitglue{%
  \ifx\@let@token「%
    \jsInhibitGlue
  \else
    \ifx\@let@token（%
      \jsInhibitGlue
    \else
      \ifx\@let@token『%
        \jsInhibitGlue
      \else
        \ifx\@let@token［%
          \jsInhibitGlue
        \fi
      \fi
    \fi
  \fi}
\def\@doendpe{%
  \@endpetrue
  \def\par{%
    \@restorepar\everypar{\everyparhook}\par\@endpefalse}%
  \everypar{{\setbox\z@\lastbox}\everypar{\everyparhook}\@endpefalse\everyparhook}}
\def\@item[#1]{%
  \if@noparitem
    \@donoparitem
  \else
    \if@inlabel
      \indent \par
    \fi
    \ifhmode
      \unskip\unskip \par
    \fi
    \if@newlist
      \if@nobreak
        \@nbitem
      \else
        \addpenalty\@beginparpenalty
        \addvspace\@topsep
        \addvspace{-\parskip}%
      \fi
    \else
      \addpenalty\@itempenalty
      \addvspace\itemsep
    \fi
    \global\@inlabeltrue
  \fi
  \everypar{%
    \@minipagefalse
    \global\@newlistfalse
    \if@inlabel
      \global\@inlabelfalse
      {\setbox\z@\lastbox
       \ifvoid\z@
         \kern-\itemindent
       \fi}%
      \box\@labels
      \penalty\z@
    \fi
    \if@nobreak
      \@nobreakfalse
      \clubpenalty \@M
    \else
      \clubpenalty \@clubpenalty
      \everypar{\everyparhook}%
    \fi
    \bxjs@ltj@inhibitglue
    \everyparhook}%
  \if@noitemarg
    \@noitemargfalse
    \if@nmbrlist
      \refstepcounter\@listctr
    \fi
  \fi
  \sbox\@tempboxa{\makelabel{#1}}%
  \global\setbox\@labels\hbox{%
    \unhbox\@labels
    \hskip \itemindent
    \hskip -\labelwidth
    \hskip -\labelsep
    \ifdim \wd\@tempboxa >\labelwidth
      \box\@tempboxa
    \else
      \hbox to\labelwidth {\unhbox\@tempboxa}%
    \fi
    \hskip \labelsep}%
  \ignorespaces}
\def\@afterheading{%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
      \@nobreakfalse
      \clubpenalty \@M
      \if@afterindent \else
        {\setbox\z@\lastbox}%
      \fi
    \else
      \clubpenalty \@clubpenalty
      \everypar{\everyparhook}%
    \fi\everyparhook}}
\def\@gnewline #1{%
  \ifvmode
    \@nolnerr
  \else
    \unskip \reserved@e {\reserved@f#1}\nobreak \hfil \break \null
    \jsInhibitGlue \ignorespaces
  \fi}
\newcommand{\prepartname}{\if@english Part~\else 第\fi}
\newcommand{\postpartname}{\if@english\else 部\fi}
\newcommand{\prechaptername}{\if@english Chapter~\else 第\fi}
\newcommand{\postchaptername}{\if@english\else 章\fi}
\newcommand{\presectionname}{}%  第
\newcommand{\postsectionname}{}% 節
\newcommand{\contentsname}{\if@english Contents\else 目次\fi}
\newcommand{\listfigurename}{\if@english List of Figures\else 図目次\fi}
\newcommand{\listtablename}{\if@english List of Tables\else 表目次\fi}
\newcommand{\refname}{\if@english References\else 参考文献\fi}
\newcommand{\bibname}{\if@english Bibliography\else 参考文献\fi}
\newcommand{\indexname}{\if@english Index\else 索引\fi}
\newcommand{\figurename}{\if@english Fig.~\else 図\fi}
\newcommand{\tablename}{\if@english Table~\else 表\fi}
\newcommand{\appendixname}{\if@english \else 付録\fi}
\@tempswafalse
\if p\jsEngine \@tempswatrue \fi
\if n\jsEngine \@tempswatrue \fi
\if@tempswa \expandafter\@firstoftwo
\else       \expandafter\@secondoftwo
\fi
{%
\newif\ifjsSeireki \jsSeirekitrue
\def\西暦{\jsSeirekitrue}
\def\和暦{\jsSeirekifalse}
\def\Seireki{\jsSeirekitrue}
\def\Wareki{\jsSeirekifalse}
\def\bxjs@if@use@seireki{%
  \ifjsSeireki \expandafter\@firstoftwo
  \else \expandafter\@secondoftwo \fi}
}{%
\newif\if西暦 \西暦true
\def\西暦{\西暦true}
\def\和暦{\西暦false}
\def\Seireki{\西暦true}
\def\Wareki{\西暦false}
\def\bxjs@if@use@seireki{%
  \if西暦 \expandafter\@firstoftwo
  \else \expandafter\@secondoftwo \fi}
}
\let\bxjs@unxp\@firstofone
\bxjs@test@engine\unexpanded{\let\bxjs@unxp\unexpanded}
\if \if p\jsEngine T\else\if n\jsEngine T\else F\fi\fi T
  \def\bxjs@iai{\noexpand~}
\else \def\bxjs@iai{}
\fi
\newcount\heisei \heisei\year \advance\heisei-1988\relax
\edef\today{%
  \if@english
    \ifcase\month\or
      January\or February\or March\or April\or May\or June\or
      July\or August\or September\or October\or November\or December\fi
      \space\number\day, \number\year
  \else
    \noexpand\bxjs@if@use@seireki{%
      \number\year\bxjs@iai\bxjs@unxp{年}%
      \bxjs@iai\number\month\bxjs@iai\bxjs@unxp{月}%
      \bxjs@iai\number\day\bxjs@iai\bxjs@unxp{日}%
    }{%
      \bxjs@unxp{平成}\bxjs@iai\number\heisei\bxjs@iai\bxjs@unxp{年}%
      \bxjs@iai\number\month\bxjs@iai\bxjs@unxp{月}%
      \bxjs@iai\number\day\bxjs@iai\bxjs@unxp{日}%
    }%
  \fi}
\hyphenation{ado-be post-script ghost-script phe-nom-e-no-log-i-cal man-u-script}
\pagestyle{headings}%
\pagenumbering{arabic}
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
  \raggedbottom
\fi
\catcode`\?=12
\ifx\bxjs@jadriver\relax\else
\input{bxjsja-\bxjs@jadriver.def}
\fi
\bxjs@restore@jltrcc
\endinput
%%
%% End of file `bxjsbook.cls'.
