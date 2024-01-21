%%
%% This is file `bxjsbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bxjscls.dtx  (with options: `class,book')
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
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bxjsbook}
  [2024/01/22 v2.9b BXJS document classes]
%% このファイルは日本語文字を含みます.
\def\bxjs@clsname{bxjsbook}
\newif\ifjsc@needsp@tch
\jsc@needsp@tchfalse
\let\jsArticle=a
\let\jsBook=b
\let\jsReport=r
\let\jsSlide=s
\let\jsDocClass\jsBook
\def\bxjs@test@engine#1#2{%
  \edef\bxjs@tmpa{\string#1}%
  \edef\bxjs@tmpb{\meaning#1}%
  \ifx\bxjs@tmpa\bxjs@tmpb #2\fi}
\let\jsEngine=n
\bxjs@test@engine\kanjiskip{\let\jsEngine=j}
\bxjs@test@engine\jintercharskip{\let\jsEngine=J}
\bxjs@test@engine\Omegaversion{\let\jsEngine=O}
\bxjs@test@engine\XeTeXversion{\let\jsEngine=x}
\bxjs@test@engine\pdftexversion{\let\jsEngine=p}
\bxjs@test@engine\luatexversion{\let\jsEngine=l}
\@tempswatrue
\if x\jsEngine
  \ifdim\the\XeTeXversion\XeTeXrevision\p@<0.997\p@
    \@tempswafalse \fi
\fi
\if@tempswa \expandafter\@gobble
\else
  \ClassError\bxjs@clsname
   {The engine in use is all too old}
   {It's a fatal error. I'll quit right now.}
  \expandafter\@firstofone
\fi{\endinput\@@end}
\if@compatibility
  \ClassError\bxjs@clsname
   {Something went chaotic!\MessageBreak
    (How come '\string\documentstyle' is there?)\MessageBreak
    I cannot go a single step further...}
   {If the chant of '\string\documentstyle' was just a blunder of yours,\MessageBreak
    then there'll still be hope....}
  \expandafter\@firstofone
\else \expandafter\@gobble
\fi{\typeout{Farewell!}\endinput\@@end}
\def\bxjs@if@format@at@least{\@ifl@t@r\fmtversion}
\bxjs@if@format@at@least{2017/04/15}{%
  \let\bxjs@if@package@at@least\@ifpackagelater
}{%else
  \def\bxjs@if@package@at@least#1#2{%
    \@ifpackageloaded{#1}{\@ifpackagelater{#1}{#2}}{\@secondoftwo}}}
\newif\ifjsWithupTeX
\ifx\ucs\@undefined\else \ifnum\ucs"3000="3000
  \jsWithupTeXtrue
\fi\fi
\let\if@jsc@uplatex\ifjsWithupTeX
\newif\ifjsWithpTeXng
\bxjs@test@engine\ngbanner{\jsWithpTeXngtrue}
\newif\ifjsWitheTeX
\bxjs@test@engine\eTeXversion{\jsWitheTeXtrue}
\newif\ifjsInPdfMode
\@nameuse{jsInPdfMode\ifnum0%
  \ifx\pdfoutput\@undefined\else\the\pdfoutput\fi
  \ifx\outputmode\@undefined\else\the\outputmode\fi
  >0 true\else false\fi}
\newif\ifbxjs@explIII
\bxjs@if@format@at@least{2020/02/02}{\bxjs@explIIItrue}{}
\newif\ifbxjs@brace@safe
\bxjs@if@format@at@least{2021/06/01}{\bxjs@brace@safetrue}{}
\newif\ifbxjs@TUenc
\def\bxjs@tmpa{TU}\edef\bxjs@tmpb{\f@encoding}
\ifx\bxjs@tmpa\bxjs@tmpb
  \bxjs@TUenctrue
\fi
\newif\ifbxjs@old@hook@system
\bxjs@if@format@at@least{2020/10/01}{}{\bxjs@old@hook@systemtrue}
\RequirePackage{calc}
\RequirePackage{keyval}
\IfFileExists{iftex.sty}{%
  \RequirePackage{iftex}
}{}
\begingroup\expandafter\endgroup
\expandafter\ifx\csname ifpdf\endcsname\@undefined\else
  \expandafter\let\csname ifjsInPdfMode\expandafter\endcsname
      \csname ifpdf\endcsname
\fi
\def\jsAtEndOfClass{%
  \expandafter\g@addto@macro\csname\bxjs@clsname.cls-h@@k\endcsname}
\IfFileExists{bxjscompat.sty}{%
  \RequirePackage{bxjscompat}%
}{}
\ifx l\jsEngine
  \directlua{ bxjs = {} }
\fi
\ifjsWitheTeX \let\bxjs@protected\protected
\else \let\bxjs@protected\@empty
\fi
\ifjsWitheTeX
  \def\bxjs@robust@def{\protected\def}
\else
  \def\bxjs@robust@def{\DeclareRobustCommand*}
\fi
\bxjs@if@format@at@least{2021/11/15}{%
  \def\bxjs@CGHN#1{#1}%
}{%else
  \def\bxjs@CGHN#1{\bxjs@CGHN@a#1//}%
  \def\bxjs@CGHN@a#1/#2/#3//{#1/#3/#2}}
\@gobbletwo\if\if \def\bxjs@cond#1\fi{%
  #1\expandafter\@firstoftwo
  \else\expandafter\@secondoftwo
  \fi}
\def\bxjs@cslet#1{%
  \expandafter\let\csname#1\endcsname}
\def\bxjs@csletcs#1#2{%
  \expandafter\let\csname#1\expandafter\endcsname\csname#2\endcsname}
\def\bxjs@catopt#1#2{%
  #1\if\relax#1\relax\else\if\relax#2\relax\else,\fi\fi#2}
\def\bxjs@ifplus#1{\@ifnextchar+{\@firstoftwo{#1}}}
\def\bxjs@trim#1{\expandafter\bxjs@trim@a#1\@nil#1}
\def\bxjs@trim@a{\futurelet\bxjs@tmpb\bxjs@trim@b}
\def\bxjs@trim@b{\bxjs@cond\ifx\bxjs@tmpb\@sptoken\fi
  {\bxjs@trim@c\bxjs@trim@a}{\bxjs@trim@d}}
\def\bxjs@trim@c#1 {#1}
\def\bxjs@trim@d#1\@nil{\bxjs@trim@e#1\@nil: \@nil\@nnil}
\def\bxjs@trim@e#1 \@nil#2\@nnil{\bxjs@cond\ifx\@nnil#2\@nnil\fi
  {\bxjs@trim@f#1\@nnil}{\bxjs@trim@e#1\@nil: \@nil\@nnil}}
\def\bxjs@trim@f#1\@nil#2\@nnil#3{\def#3{#1}}
\def\bxjs@set@array@from@clist#1#2{%
  \@tempcnta\z@
  \@for\bxjs@tmpa:=\@empty#2\do{%
     \bxjs@trim\bxjs@tmpa \bxjs@cslet{#1/\the\@tempcnta}\bxjs@tmpa
     \advance\@tempcnta\@ne}
  \bxjs@cslet{#1/\the\@tempcnta}\relax}
\let\c@bxjs@tempcnta\@tempcnta
\def\bxjs@gset@tempcnta{\setcounter{bxjs@tempcnta}}
\def\bxjs@advance@qc#1#2{%
  \begingroup
    \@tempcnta=#1\relax \advance\@tempcnta by#2\relax
    \global\chardef\bxjs@g@tmpa\@tempcnta
  \endgroup \let#1\bxjs@g@tmpa}
\ifjsWitheTeX
  \let\bxjs@new@count\newcount
  \def\bxjs@advance@count#1#2{\advance#1by#2\relax}
\else
  \def\bxjs@new@count#1{\chardef#1\z@}
  \let\bxjs@advance@count\bxjs@advance@qc
\fi
\def\jsSetQHLength#1#2{%
  \begingroup
    \bxjs@parse@qh{#2}%
    \ifx\bxjs@tmpb\relax
      \setlength\@tempdima{#2}%
      \xdef\bxjs@g@tmpa{\the\@tempdima}%
    \else \global\let\bxjs@g@tmpa\bxjs@tmpb
    \fi
  \endgroup
  #1=\bxjs@g@tmpa\relax}
\if j\jsEngine \def\bxjs@parse@qh@units{zw,zh}
\else \def\bxjs@parse@qh@units{trueQ,trueH,Q,H,zw,zh}
\fi
\def\bxjs@parse@qh#1{%
  \let\bxjs@tmpb\relax
  \@for\bxjs@tmpa:=\bxjs@parse@qh@units\do{%
    \ifx\bxjs@tmpb\relax
      \edef\bxjs@next{{\bxjs@tmpa}{#1}}%
      \expandafter\bxjs@parse@qh@a\csname bxjs@unit@\bxjs@tmpa\expandafter
          \endcsname\bxjs@next
    \fi}}
\def\bxjs@parse@qh@a#1#2#3{%
  \def\bxjs@next##1#2\@nil##2\@nnil{\bxjs@parse@qh@b{##1}{##2}#1}%
  \bxjs@next#3\@nil#2\@nil\@nnil}
\def\bxjs@parse@qh@b#1#2#3{%
  \ifx\@nnil#2\@nnil\else
    \ifx#3\relax
      \ClassError\bxjs@clsname
       {You cannot use '\bxjs@tmpa' here}{\@ehc}%
      \def\bxjs@tmpb{0pt}%
    \else
      \@tempdimb#3\relax \@tempdimb#1\@tempdimb
      \edef\bxjs@tmpb{\the\@tempdimb}%
    \fi
  \fi}
  \def\bxjs@unit@Q{0.25mm}\let\bxjs@unit@H\bxjs@unit@Q
\newif\ifbxjs@after@preamble
\@onlypreamble\bxjs@begin@document@hook
\def\bxjs@begin@document@hook{\bxjs@after@preambletrue}
\AtBeginDocument{\bxjs@begin@document@hook}
\@onlypreamble\bxjs@post@option@hook
\let\bxjs@post@option@hook\@empty
\@onlypreamble\bxjs@pre@jadriver@hook
\let\bxjs@pre@jadriver@hook\@empty
\@onlypreamble\bxjs@endpreamble@hook
\let\bxjs@endpreamble@hook\@empty
\AtEndOfClass{%
  \ifx\AtEndPreamble\@undefined\else
    \AtEndPreamble{\bxjs@endpreamble@hook}%
  \fi}
\@onlypreamble\bxjs@tmpdo
\@onlypreamble\bxjs@tmpdo@a
\@onlypreamble\bxjs@tmpdo@b
\@onlypreamble\bxjs@tmpdo@c
\@onlypreamble\bxjs@tmpdo@d
\bxjs@robust@def\jsInhibitGlue{%
  \ifx\inhibitglue\@undefined\else \inhibitglue \fi}
\newif\if@restonecol
\newif\if@titlepage
\newif\if@openright
\newif\if@openleft
\newif\if@mainmatter \@mainmattertrue
\newif\if@enablejfam \@enablejfamfalse
\@onlypreamble\bxjs@setpaper
\def\bxjs@setpaper#1{\def\bxjs@param@paper{#1}}
\newif\ifbxjs@iso@bsize
\DeclareOption{iso-bsize}{\bxjs@iso@bsizetrue}
\@onlypreamble\bxjs@setpaper@bsize
\def\bxjs@setpaper@bsize#1{\edef\bxjs@param@paper{%
  b#1\ifbxjs@iso@bsize paper\else j\fi}}
\DeclareOption{a3paper}{\bxjs@setpaper{a3paper}}
\DeclareOption{a4paper}{\bxjs@setpaper{a4paper}}
\DeclareOption{a5paper}{\bxjs@setpaper{a5paper}}
\DeclareOption{a6paper}{\bxjs@setpaper{a6paper}}
\DeclareOption{b4paper}{\bxjs@setpaper@bsize{4}}
\DeclareOption{b5paper}{\bxjs@setpaper@bsize{5}}
\DeclareOption{b6paper}{\bxjs@setpaper@bsize{6}}
\DeclareOption{a4j}{\bxjs@setpaper{a4paper}}
\DeclareOption{a5j}{\bxjs@setpaper{a5paper}}
\DeclareOption{b4j}{\bxjs@setpaper{b4j}}
\DeclareOption{b5j}{\bxjs@setpaper{b5j}}
\DeclareOption{a4var}{\bxjs@setpaper{{210truemm}{283truemm}}}
\DeclareOption{b5var}{\bxjs@setpaper{{182truemm}{230truemm}}}
\DeclareOption{letterpaper}{\bxjs@setpaper{letterpaper}}
\DeclareOption{legalpaper}{\bxjs@setpaper{legalpaper}}
\DeclareOption{executivepaper}{\bxjs@setpaper{executivepaper}}
\@for\bxjs@tmpa:={%
  a0,a1,a2,c0,c1,c2,c3,c4,c5,c6,ansia,ansib,ansic,ansid,ansie%
}\do{\edef\bxjs@next{%
  \noexpand\DeclareOption{\bxjs@tmpa paper}%
    {\noexpand\bxjs@setpaper{\bxjs@tmpa paper}}%
}\bxjs@next}
\DeclareOption{screen}{\bxjs@setpaper{screen}}
\@for\bxjs@tmpa:={0,1,2,3}\do{\edef\bxjs@next{%
  \noexpand\DeclareOption{b\bxjs@tmpa paper}%
    {\noexpand\bxjs@setpaper@bsize{\bxjs@tmpa}}%
}\bxjs@next}
\DeclareOption{a4varpaper}{\bxjs@setpaper{{210truemm}{283truemm}}}
\DeclareOption{b5varpaper}{\bxjs@setpaper{{182truemm}{230truemm}}}
\DeclareOption{screenpaper}{\bxjs@setpaper{screen}}
\DeclareOption{custompaper}{}
\newif\if@landscape
\@landscapefalse
\DeclareOption{landscape}{\@landscapetrue}
\newif\if@slide
\@slidefalse
\newcommand{\@ptsize}{0}
\def\bxjs@param@basefontsize{10pt}
\def\jsUnusualPtSize{-20}
\def\bxjs@setbasefontsize#1{%
  \jsSetQHLength\@tempdima{#1}%
  \edef\bxjs@param@basefontsize{\the\@tempdima}%
  \ifdim\@tempdima=10pt         \long\def\@ptsize{0}%
  \else\ifdim\@tempdima=10.95pt \long\def\@ptsize{1}%
  \else\ifdim\@tempdima=12pt    \long\def\@ptsize{2}%
  \else \long\edef\@ptsize{\jsUnusualPtSize}\fi\fi\fi}
\def\bxjs@setjbasefontsize#1{%
  \setkeys{bxjs}{jbase=#1}}
\newif\ifjsc@mag
\newif\ifjsc@mag@xreal
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
\DeclareOption{usemag}{\let\bxjs@magstyle\bxjs@magstyle@@usemag}
\DeclareOption{nomag}{\let\bxjs@magstyle\bxjs@magstyle@@nomag}
\DeclareOption{nomag*}{\let\bxjs@magstyle\bxjs@magstyle@@xreal}
\if j\jsEngine
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\DeclareOption{tombow}{%
  \tombowtrue \tombowdatetrue
  \setlength{\@tombowwidth}{.1\p@}%
  \@bannertoken{%
     \jobname\space(\number\year-\two@digits\month-\two@digits\day
     \space\two@digits\hour:\two@digits\minute)}%
  \maketombowbox}
\DeclareOption{tombo}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{.1\p@}%
  \maketombowbox}
\fi
\if j\jsEngine
\DeclareOption{mentuke}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{\z@}%
  \maketombowbox}
\fi
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
\DeclareOption{vartwoside}{\@twosidetrue \@mparswitchfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{openright}{\@openrighttrue\@openleftfalse}
\DeclareOption{openleft}{\@openlefttrue\@openrightfalse}
\DeclareOption{openany}{\@openrightfalse\@openleftfalse}
\def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \def\@currentcounter{equation}%
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
    \def\@currentcounter{equation}%
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
\def\bxjs@kv@enablejfam@true{\let\bxjs@enablejfam=t}
\def\bxjs@kv@enablejfam@false{\let\bxjs@enablejfam=f}
\def\bxjs@kv@enablejfam@default{\let\bxjs@enablejfam\@undefined}
\define@key{bxjs}{enablejfam}[true]{%
  \bxjs@set@keyval{enablejfam}{#1}{}}
\DeclareOption{disablejfam}{\let\bxjs@enablejfam=f}
\newif\ifjsDraft
\DeclareOption{draft}{\jsDrafttrue \overfullrule=5pt }
\DeclareOption{final}{\jsDraftfalse \overfullrule=0pt }
\newif\ifbxjs@papersize
\bxjs@papersizetrue
\DeclareOption{nopapersize}{\bxjs@papersizefalse}
\DeclareOption{papersize}{\bxjs@papersizetrue}
\newif\if@english
\@englishfalse
\DeclareOption{english}{\@englishtrue}
\newif\if@jslogo \@jslogofalse
\DeclareOption{jslogo}{\@jslogotrue}
\DeclareOption{nojslogo}{\@jslogofalse}
\mathchardef\bxjs@isc@ll=128
\mathchardef\bxjs@isc@sl=259
\def\bxjs@isc@sl@h{65539 }
\def\bxjs@invscale#1#2{%
  \begingroup \@tempdima=#1\relax \@tempdimb#2\p@\relax
    \ifdim\@tempdima<\bxjs@isc@ll\p@
      \@tempcnta\@tempdima \multiply\@tempcnta\@cclvi
      \divide\@tempcnta\@tempdimb \multiply\@tempcnta\@cclvi
    \else
      \@tempcnta\@tempdima \divide\@tempcnta\@tempdimb
      \multiply\@tempcnta\p@ \let\bxjs@isc@sl\bxjs@isc@sl@h
    \fi
    \@tempcntb\p@ \divide\@tempcntb\@tempdimb
    \advance\@tempcnta-\@tempcntb \advance\@tempcnta-\tw@
    \@tempdimb\@tempcnta\@ne
    \advance\@tempcnta\@tempcntb \advance\@tempcnta\@tempcntb
    \advance\@tempcnta\bxjs@isc@sl \@tempdimc\@tempcnta\@ne
    \@whiledim\@tempdimb<\@tempdimc\do{%
      \@tempcntb\@tempdimb \advance\@tempcntb\@tempdimc
      \advance\@tempcntb\@ne \divide\@tempcntb\tw@
      \ifdim #2\@tempcntb>\@tempdima
        \advance\@tempcntb\m@ne \@tempdimc=\@tempcntb\@ne
      \else \@tempdimb=\@tempcntb\@ne \fi}%
    \xdef\bxjs@gtmpa{\the\@tempdimb}%
  \endgroup #1=\bxjs@gtmpa\relax}
\DeclareOption{pandoc}{%
  \bxjs@apply@pandoc@opt}
\@onlypreamble\bxjs@apply@pandoc@opt
\def\bxjs@apply@pandoc@opt{%
  \g@addto@macro\bxjs@post@option@hook{%
    \bxjs@oldfontcommandstrue
    \setkeys{bxjs}{ja=pandoc}%
    \let\bxjs@engine@given=*}%
  \ifx\bxjs@driver@opt\@undefined
    \def\bxjs@driver@opt{dvipdfmx}%
    \bxjs@dvi@opttrue
  \fi
  \global\let\bxjs@apply@pandoc@opt\relax}
\DeclareOption{pandoc+}{%
  \g@addto@macro\bxjs@post@option@hook{%
    \edef\jsJaParam{\bxjs@catopt{_plus}\jsJaParam}}%
  \ExecuteOptions{pandoc}}
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
\DeclareOption{platex-ng}{%
  \def\bxjs@engine@opt{platex-ng}%
  \let\bxjs@engine@given=g}
\DeclareOption{platex-ng*}{%
  \def\bxjs@engine@opt{platex-ng*}%
  \let\bxjs@platexng@nodrv=t%
  \let\bxjs@engine@given=g}
\let\bxjs@driver@@dvimode=0
\let\bxjs@driver@@dvipdfmx=1
\let\bxjs@driver@@pdfmode=2
\let\bxjs@driver@@xetex=3
\let\bxjs@driver@@dvips=4
\let\bxjs@driver@@none=5
\DeclareOption{dvips}{%
  \def\bxjs@driver@opt{dvips}%
  \let\bxjs@driver@given\bxjs@driver@@dvips}
\DeclareOption{dviout}{%
  \def\bxjs@driver@opt{dviout}%
  \let\bxjs@driver@given\bxjs@driver@@dvimode}
\DeclareOption{xdvi}{%
  \def\bxjs@driver@opt{xdvi}%
  \let\bxjs@driver@given\bxjs@driver@@dvimode}
\DeclareOption{dvipdfmx}{%
  \def\bxjs@driver@opt{dvipdfmx}%
  \let\bxjs@driver@given\bxjs@driver@@dvipdfmx}
\DeclareOption{nodvidriver}{%
  \def\bxjs@driver@opt{nodvidriver}%
  \let\bxjs@driver@given\bxjs@driver@@none}
\DeclareOption{class-nodvidriver}{%
  \def\bxjs@driver@opt{class-nodvidriver}%
  \let\bxjs@driver@given\bxjs@driver@@none}
\DeclareOption{pdftex}{%
  \def\bxjs@driver@opt{pdftex}%
  \let\bxjs@driver@given\bxjs@driver@@pdfmode}
\DeclareOption{luatex}{%
  \def\bxjs@driver@opt{luatex}%
  \let\bxjs@driver@given\bxjs@driver@@pdfmode}
\DeclareOption{xetex}{%
  \def\bxjs@driver@opt{xetex}%
  \let\bxjs@driver@given\bxjs@driver@@xetex}
\DeclareOption{dvipdfmx-if-dvi}{\bxjs@depre@opt@do{dvipdfmx-if-dvi}{dvi=dvipdfmx}}
\@onlypreamble\bxjs@depre@opt
\def\bxjs@depre@opt#1#2{%
  \ClassWarningNoLine\bxjs@clsname
   {The old option '#1' is DEPRECATED\MessageBreak
    and may be abolished in future!\MessageBreak
    You should instead write:\MessageBreak
    \space\space #2}}
\@onlypreamble\bxjs@depre@opt@do
\def\bxjs@depre@opt@do#1#2{%
  \bxjs@depre@opt{#1}{#2}%
  \setkeys{bxjs}{#2}}
\newif\ifbxjs@bigcode \bxjs@bigcodetrue
\DeclareOption{nobigcode}{%
  \bxjs@bigcodefalse}
\DeclareOption{bigcode}{%
  \bxjs@bigcodetrue}
\newif\ifbxjs@oldfontcommands
\DeclareOption{nooldfontcommands}{%
  \bxjs@oldfontcommandsfalse}
\DeclareOption{oldfontcommands}{%
  \bxjs@oldfontcommandstrue}
\ifbxjs@brace@safe
  \@onlypreamble\bxjs@register@badopt
  \def\bxjs@register@badopt#1{%
    \expandafter\@onlypreamble\csname bxjs@badopt/#1\endcsname
    \@namedef{bxjs@badopt/#1}}
  \g@addto@macro\bxjs@begin@document@hook{%
    \@for\bxjs@tmpa:=\@unusedoptionlist\do{%
      \@nameuse{bxjs@badopt/\bxjs@tmpa}}}
\fi
\@onlypreamble\bxjs@invalid@opt
\ifbxjs@brace@safe
  \def\bxjs@invalid@opt#1#2{%
    \bxjs@register@badopt{#1}{\ClassError\bxjs@clsname{#2}\@ehc}}
\else
  \def\bxjs@invalid@opt#1#2{%
    \DeclareOption{#1}{\ClassWarningNoLine\bxjs@clsname{#2}}}
\fi
\bxjs@invalid@opt{winjis}{%
  This class does not support 'winjis' option}
\bxjs@invalid@opt{mingoth}{%
  This class does not support 'mingoth' option}
\bxjs@invalid@opt{jis}{%
  This class does not support 'jis' option}
\if j\jsEngine\else
\bxjs@invalid@opt{tombo}{%
  Option 'tombo' can be used only on (u)pLaTeX}
\bxjs@invalid@opt{tombow}{%
  Option 'tombow' can be used only on (u)pLaTeX}
\bxjs@invalid@opt{mentuke}{%
  Option 'mentuke' can be used only on (u)pLaTeX}
\fi
\DeclareOption*{%
  \bxjs@check@ja@prefix \ifx\bxjs@next\relax
  \def\bxjs@next{\bxjs@cls@setkeys{bxjs}}%
  \expandafter\bxjs@next\expandafter{\CurrentOption}%
  \else
    \edef\bxjs@next{%
      \noexpand\setkeys{bxjs}{japaram={\bxjs@next}}%
    }\bxjs@next
  \fi}
\def\bxjs@check@ja@prefix{%
  \let\bxjs@next\relax
  \expandafter\bxjs@check@ja@prefix@a\CurrentOption\@nil ja:\@nil\@nnil}
\def\bxjs@check@ja@prefix@a#1ja:#2\@nil#3\@nnil{%
  \ifx\@nil#1\@nil \def\bxjs@next{#2}\fi}
\def\bxjs@safe@setkeys#1#2{%
  \let\bxjs@save@KV@errx\KV@errx \let\KV@errx\@gobble
  \setkeys{#1}{#2}%
  \let\KV@errx\bxjs@save@KV@errx}
\def\bxjs@cls@setkeys#1#2{%
  \let\bxjs@save@KV@errx\KV@errx
  \def\KV@errx##1{\OptionNotUsed}%
  \setkeys{#1}{#2}%
  \let\KV@errx\bxjs@save@KV@errx}
\ifbxjs@brace@safe\else
  \let\bxjs@cls@setkeys\bxjs@safe@setkeys
\fi
\@onlypreamble\bxjs@declare@enum@option
\def\bxjs@declare@enum@option#1#2#3{%
  \bxjs@csletcs{bxjs@#2}{bxjs@#2@@#3}%
  \define@key{bxjs}{#1}{%
    \@ifundefined{bxjs@#2@@##1}{%
      \bxjs@error@keyval{#1}{##1}%
    }{\bxjs@csletcs{bxjs@#2}{bxjs@#2@@##1}}}}
\@onlypreamble\bxjs@declare@bool@option
\def\bxjs@declare@bool@option#1#2#3{%
  \csname newif\expandafter\endcsname\csname ifbxjs@#2\endcsname
  \@nameuse{bxjs@#2#3}%
  \define@key{bxjs}{#1}[true]{%
    \@ifundefined{bxjs@#2##1}{%
      \bxjs@error@keyval{#1}{##1}%
    }{\@nameuse{bxjs@#2##1}}}}
\def\bxjs@set@keyval#1#2#3{%
  \bxjs@csletcs{bxjs@next}{bxjs@kv@#1@#2}%
  \ifx\bxjs@next\relax
    \bxjs@error@keyval{#1}{#2}%
    #3%
  \else \bxjs@next
  \fi}
\@onlypreamble\bxjs@error@keyval
\def\bxjs@error@keyval#1#2{%
  \ClassError\bxjs@clsname
   {Invalid value '#2' for option #1}\@ehc}
\def\jsScale{0.924715}
\define@key{bxjs}{base}{%
  \edef\bxjs@base@opt{#1}%
  \bxjs@setbasefontsize{#1}}
\define@key{bxjs}{fontsize}{\setkeys{bxjs}{base=#1}}
\define@key{bxjs}{jbase}{\edef\bxjs@jbase@opt{#1}}
\define@key{bxjs}{jafontsize}{\setkeys{bxjs}{jbase=#1}}
\define@key{bxjs}{scale}{%
  \edef\bxjs@scale@opt{#1}%
  \let\jsScale\bxjs@scale@opt}
\define@key{bxjs}{jafontscale}{\setkeys{bxjs}{scale=#1}}
\DeclareOption{noscale}{\bxjs@depre@opt@do{noscale}{scale=1}}
\let\bxjs@param@mag\relax
\define@key{bxjs}{mag}{\edef\bxjs@param@mag{#1}}
\define@key{bxjs}{paper}{\edef\bxjs@param@paper{#1}}
\let\bxjs@jadriver\relax
\define@key{bxjs}{jadriver}{%
  \bxjs@depre@opt{jadriver}{ja=#1}\edef\bxjs@jadriver@opt{#1}}
\define@key{bxjs}{ja}[\relax]{%
  \ifx\relax#1\else\edef\bxjs@jadriver@opt{#1}\fi}
\let\jsJaFont\@empty
\define@key{bxjs}{jafont}{\edef\jsJaFont{#1}}
\let\jsJaParam\@empty
\define@key{bxjs}{japaram}{%
  \edef\jsJaParam{\bxjs@catopt\jsJaParam{#1}}}
\define@key{bxjs}{pandoc}[]{%
  \ExecuteOptions{pandoc}%
  \edef\jsJaParam{\bxjs@catopt\jsJaParam{#1}}}
\define@key{bxjs}{pandoc+}[]{%
  \ExecuteOptions{pandoc+}%
  \edef\jsJaParam{\bxjs@catopt\jsJaParam{#1}}}
\let\bxjs@magstyle@@mag=m
\let\bxjs@magstyle@@real=r
\let\bxjs@magstyle@@xreal=x
\let\bxjs@magstyle@@usemag\bxjs@magstyle@@mag
\let\bxjs@magstyle@@nomag\bxjs@magstyle@@real
\bxjs@cslet{bxjs@magstyle@@nomag*}\bxjs@magstyle@@xreal
\let\bxjs@magstyle@@default\bxjs@magstyle@@usemag
\ifx l\jsEngine \ifnum\luatexversion>86
  \let\bxjs@magstyle@@default\bxjs@magstyle@@xreal
\fi\fi
\ifjsWithpTeXng
  \let\bxjs@magstyle@@default\bxjs@magstyle@@xreal
\fi
\let\bxjs@magstyle\bxjs@magstyle@@default
\define@key{bxjs}{magstyle}{%
  \bxjs@csletcs{bxjs@magstyle}{bxjs@magstyle@@#1}%
  \ifx\bxjs@magstyle\relax
    \bxjs@error@keyval{magstyle}{#1}%
    \let\bxjs@magstyle\bxjs@magstyle@@default
  \fi}
\let\bxjs@geometry@@class=c
\let\bxjs@geometry@@user=u
\bxjs@declare@enum@option{geometry}{geometry}{class}
\bxjs@declare@bool@option{fancyhdr}{fancyhdr}{true}
\newif\ifbxjs@dvi@opt
\let\bxjs@dvidriver@@dvipdfmx=\bxjs@driver@@dvipdfmx
\let\bxjs@dvidriver@@dvips=\bxjs@driver@@dvips
\let\bxjs@dvidriver@@dviout=\bxjs@driver@@dvimode
\let\bxjs@dvidriver@@xdvi=\bxjs@driver@@dvimode
\let\bxjs@dvidriver@@nodvidriver=\bxjs@driver@@none
\bxjs@cslet{bxjs@dvidriver@@class-nodvidriver}\bxjs@driver@@none
\define@key{bxjs}{dvi}{%
  \bxjs@csletcs{bxjs@tmpa}{bxjs@dvidriver@@#1}%
  \ifx\bxjs@tmpa\relax
    \bxjs@error@keyval{dvi}{#1}%
  \else
    \def\bxjs@driver@opt{#1}%
    \let\bxjs@driver@given\@undefined
    \bxjs@dvi@opttrue
  \fi}
\newif\ifbxjs@layout@buggyhmargin
\newif\ifbxjs@force@chapterabstract
\bxjs@force@chapterabstracttrue
\@namedef{bxjs@kv@layout@v1}{%
\bxjs@layout@buggyhmargintrue
}
\@namedef{bxjs@kv@layout@v2}{%
\bxjs@layout@buggyhmarginfalse
}
\define@key{bxjs}{layout}{%
  \bxjs@set@keyval{layout}{#1}{}}
\define@key{bxjs}{textwidth-limit}{%
  \bxjs@depre@opt{textwidth-limit}{textwidth=#1zw}%
  \edef\bxjs@textwidth@limit@opt{#1}}
\define@key{bxjs}{textwidth}{\edef\bxjs@textwidth@opt{#1}}
\define@key{bxjs}{line_length}{\setkeys{bxjs}{textwidth=#1}}
\define@key{bxjs}{number-of-lines}{\edef\bxjs@number@of@lines@opt{#1}}
\define@key{bxjs}{number_of_lines}{\setkeys{bxjs}{number-of-lines=#1}}
\define@key{bxjs}{paragraph-mark}{%
  \edef\bxjs@paragraph@mark{#1}}
\bxjs@declare@bool@option{whole-zw-lines}{whole@zw@lines}{true}
\bxjs@declare@bool@option{jaspace-cmd}{jaspace@cmd}{true}
\define@key{bxjs}{xkanjiskip-cmd}[true]{\setkeys{bxjs}{jaspace-cmd=#1}}
\bxjs@declare@bool@option{fix-at-cmd}{fix@at@cmd}{true}
\bxjs@declare@bool@option{hyperref-enc}{hyperref@enc}{true}
\chardef\bxjs@everyparhook@@none=0
\chardef\bxjs@everyparhook@@compat=1
\chardef\bxjs@everyparhook@@modern=2
\bxjs@declare@enum@option{everyparhook}{everyparhook}{%
  \if j\jsEngine compat\else modern\fi}
\chardef\bxjs@label@section@@none=0
\chardef\bxjs@label@section@@compat=1
\chardef\bxjs@label@section@@modern=2
\bxjs@declare@enum@option{label-section}{label@section}{compat}
\bxjs@declare@bool@option{use-zw}{usezw}{true}
\DeclareOption{nozw}{\bxjs@depre@opt@do{nozw}{use-zw=false}}
\DeclareOption{zw}{\bxjs@depre@opt@do{zw}{use-zw=true}}
\bxjs@declare@bool@option{disguise-js}{disguise@js}{true}
\DeclareOption{nojs}{\bxjs@depre@opt@do{nojs}{disguise-js=false}}
\DeclareOption{js}{\bxjs@depre@opt@do{js}{disguise-js=true}}
\bxjs@declare@bool@option{precise-text}{precisetext}{false}
\DeclareOption{noprecisetext}{\bxjs@depre@opt@do{noprecisetext}{precise-text=false}}
\DeclareOption{precisetext}{\bxjs@depre@opt@do{precisetext}{precise-text=true}}
\bxjs@declare@bool@option{simple-ja-setup}{simplejasetup}{true}
\DeclareOption{nosimplejasetup}{\bxjs@depre@opt@do{nosimplejasetup}{simple-ja-setup=false}}
\DeclareOption{simplejasetup}{\bxjs@depre@opt@do{simplejasetup}{simple-ja-setup=true}}
\bxjs@declare@bool@option{plautopatch}{plautopatch}{false}
\g@addto@macro\bxjs@plautopatchtrue{\let\bxjs@plautopatch@given\@undefined}
\g@addto@macro\bxjs@plautopatchfalse{\def\bxjs@plautopatch@given{false}}
\ifbxjs@brace@safe\else
\let\bxjs@org@removeelement\@removeelement
\def\@removeelement#1#2#3{%
  \def\reserved@a{#2}%
  \ifx\reserved@a\@empty \let#3\@empty
  \else \bxjs@org@removeelement{#1}{#2}{#3}%
  \fi}
\fi
\ExecuteOptions{a4paper,twoside,onecolumn,titlepage,openright,final}
\ProcessOptions\relax
\bxjs@post@option@hook
\if@slide
  \def\maybeblue{\@ifundefined{ver@color.sty}{}{\color{blue}}}
\fi
\def\bxjs@tmpdo{%
  \def\bxjs@tmpa{\@gobble}%
  \expandafter\bxjs@tmpdo@a\@classoptionslist,\@nil,%
  \let\@classoptionslist\bxjs@tmpa}
\def\bxjs@tmpdo@a#1,{%
  \ifx\@nil#1\relax\else
    \bxjs@tmpdo@b#1{}\@nil
    \if@tempswa \edef\bxjs@tmpa{\bxjs@tmpa,#1}\fi
    \expandafter\bxjs@tmpdo@a
  \fi}
\def\bxjs@tmpdo@b#1#{\bxjs@tmpdo@c}
\def\bxjs@tmpdo@c#1\@nil{%
  \ifx\@nil#1\@nil \@tempswatrue \else \@tempswafalse \fi}
\bxjs@tmpdo
\@expandtwoargs\@removeelement
  {papersize}\@classoptionslist\@classoptionslist
\@expandtwoargs\@removeelement
  {10pt}\@classoptionslist\@classoptionslist
\@expandtwoargs\@removeelement
  {noscale}\@classoptionslist\@classoptionslist
\ifx\bxjs@jadriver@opt\@undefined\else
  \let\bxjs@jadriver\bxjs@jadriver@opt
\fi
\let\bxjs@tmpb\jsEngine
\ifx j\bxjs@tmpb\ifjsWithpTeXng
  \let\bxjs@tmpb=g
\fi\fi
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
    \ClassError\bxjs@clsname
     {Option '\bxjs@engine@opt' used on wrong engine}\@ehc
  \fi
\fi
\ifjsWithpTeXng
  \g@addto@macro\@classoptionslist{,uplatex}
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
    \ifjsWithpTeXng\ifx\bxjs@driver@given\bxjs@driver@@dvipdfmx\else
      \@tempswafalse
    \fi\fi
  \fi\fi
\fi
\if@tempswa\else
  \ClassError\bxjs@clsname
   {Option '\bxjs@driver@opt' used on wrong engine}\@ehc
\fi
\ifjsInPdfMode \@tempswafalse
\else\ifx x\jsEngine \@tempswafalse
\else\ifjsWithpTeXng \@tempswafalse
\else \@tempswatrue
\fi\fi\fi
\if@tempswa
  \ifx\bxjs@driver@opt\@undefined
    \if \ifbxjs@explIII T\else\ifx\bxjs@jadriver@opt\@undefined F\else T\fi\fi T%
      \ClassWarningNoLine\bxjs@clsname
       {A driver option is MISSING!!\MessageBreak
        You should properly specify one of the valid\MessageBreak
        driver options according to the DVI driver\MessageBreak
        that is in use:\MessageBreak
        \@spaces dvips, dvipdfmx, dviout, xdvi,\MessageBreak
        \@spaces nodvidriver}
    \fi
  \fi
  \ifbxjs@dvi@opt
    \edef\bxjs@next{%
      \let\noexpand\bxjs@driver@given
       \csname bxjs@dvidriver@@\bxjs@driver@opt\endcsname
      \noexpand\g@addto@macro\noexpand\@classoptionslist
       {,\bxjs@driver@opt}%
    }\bxjs@next
  \fi
\fi
\ifjsWithpTeXng
  \ifx\bxjs@driver@given\bxjs@driver@@dvipdfmx
    \let\bxjs@platexng@nodrv\@undefined
  \else\ifx t\bxjs@platexng@nodrv\else
    \g@addto@macro\@classoptionslist{,dvipdfmx}
  \fi\fi
\fi
\ifx\bxjs@driver@given\bxjs@driver@@none
  \bxjs@papersizefalse
\fi
\@ifpackageloaded{plautopatch}{%
  \bxjs@plautopatchtrue
}{}
\def\bxjs@@minimal{minimal}
\def\bxjs@@standard{standard}
\def\bxjs@@pandoc{pandoc}
\def\bxjs@@modern{modern}
\ifx\bxjs@jadriver\relax
  \ifx j\jsEngine
    \let\bxjs@jadriver\bxjs@@standard
  \else
    \ClassWarningNoLine\bxjs@clsname
     {The option 'ja' is MISSING!!\MessageBreak
      So 'ja=minimal' is assumed as fallback, but\MessageBreak
      such implicit setting is now DEPRECATED!\MessageBreak
      You should write 'ja=minimal' explicitly,\MessageBreak
      if it is intended}
    \let\bxjs@jadriver\bxjs@@minimal
  \fi
\fi
\ifx\bxjs@jadriver\bxjs@@pandoc \ifx\bxjs@plautopatch@given\@undefined
    \ifjsWitheTeX
  \bxjs@plautopatchtrue
\fi\fi\fi
\ifx j\jsEngine \ifbxjs@plautopatch
  \RequirePackage{plautopatch}[2018/08/22]%v0.3
\fi\fi
\ifx\bxjs@jadriver@opt\@undefined\else
  \ifx\bxjs@engine@given\@undefined
    \ClassError\bxjs@clsname
     {An engine option must be explicitly given}%
     {When you use a Japanese-driver you must specify a correct\MessageBreak
      engine option.\MessageBreak\@ehc}
\fi\fi
\ifx\bxjs@magstyle@@default\bxjs@magstyle@@mag\else
  \ifx\bxjs@magstyle\bxjs@magstyle@@mag
    \let\bxjs@magstyle\bxjs@magstyle@@default
    \ClassError\bxjs@clsname
     {The engine does not support 'magstyle=usemag'}%
     {LuaTeX v0.87 or later no longer supports the "mag" feature of TeX.\MessageBreak
      The default value 'nomag*' is used instead.\MessageBreak \@ehc}
  \fi
\fi
\ifx\bxjs@jbase@opt\@undefined\else
  \ifx\bxjs@base@opt\@undefined
    \jsSetQHLength\@tempdima{\bxjs@jbase@opt}%
    \bxjs@invscale\@tempdima\jsScale
    \bxjs@setbasefontsize{\@tempdima}%
  \else
    \ifx\bxjs@scale@opt\@undefined\else
      \ClassWarningNoLine\bxjs@clsname
       {Redundant 'scale' option is ignored}%
    \fi
    \jsSetQHLength\@tempdima{\bxjs@jbase@opt}%
    \@tempdimb=\bxjs@param@basefontsize\relax
    \edef\jsScale{\strip@pt\@tempdimb}%
    \bxjs@invscale\@tempdima\jsScale
    \edef\jsScale{\strip@pt\@tempdima}%
  \fi
\fi
\let\Cjascale\jsScale
\ifbxjs@disguise@js
\def\bxjs@js@clsname{jsbook}
  \@namedef{ver@\bxjs@js@clsname.cls}{2001/01/01 (bxjs)}
\fi
\g@addto@macro\@classoptionslist{,nosetpagesize}
\ifbxjs@oldfontcommands
  \AtEndOfClass{\allowoldfontcommands}
\fi
\ifx\stockwidth\@undefined\newdimen\stockwidth\fi
\ifx\stockheight\@undefined\newdimen\stockheight\fi
\begingroup\expandafter\expandafter\expandafter\endgroup
\expandafter\ifx\csname iftombow\expandafter\endcsname\csname iftrue\endcsname
  \setlength{\stockwidth}{\paperwidth}
  \setlength{\stockheight}{\paperheight}
  \advance \stockwidth 2in
  \advance \stockheight 2in
\fi
\ifdim\bxjs@param@basefontsize<10pt \def\n@baseline{15}%
\else \def\n@baseline{16}\fi
\ifx\bxjs@magstyle\bxjs@magstyle@@mag
  \jsc@magtrue
\else\ifx\bxjs@magstyle\bxjs@magstyle@@xreal
  \jsc@mag@xrealtrue
\fi\fi
\ifx\bxjs@param@mag\relax
  \@tempdima=\bxjs@param@basefontsize
  \advance\@tempdima.001pt \multiply\@tempdima25
  \divide\@tempdima16384\relax \@tempcnta\@tempdima\relax
  \edef\bxjs@param@mag{\the\@tempcnta}
\else
  \bxjs@gset@tempcnta{\bxjs@param@mag}
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
\edef\jsc@magscale{\strip@pt\@tempdima}
\let\jsBaseFontSize\bxjs@param@basefontsize
\newdimen\jsc@mpt
\newdimen\jsc@mmm
\ifjsc@mag
  \jsc@mpt=1\p@
  \jsc@mmm=1mm
\else
  \jsc@mpt=\jsc@magscale\p@
  \jsc@mmm=\jsc@magscale mm
\fi
\newdimen\jsZw
\jsZw=10\jsc@mpt \jsZw=\jsScale\jsZw
\ifbxjs@usezw
  \providecommand*\zw{\jsZw}
\fi
\def\zwspace{\hskip\jsZw\relax}
\ifjsc@mag@xreal
  \RequirePackage{type1cm}
  \let\jsc@invscale\bxjs@invscale
  \ifbxjs@TUenc
    \expandafter\let\csname TU/lmr/m/n/10\endcsname\relax
  \else
    \expandafter\let\csname OT1/cmr/m/n/10\endcsname\relax
  \fi
  \expandafter\let\csname OMX/cmex/m/n/10\endcsname\relax
  \let\jsc@get@external@font\get@external@font
  \def\get@external@font{%
    \jsc@preadjust@extract@font
    \jsc@get@external@font}
  \def\jsc@fstrunc#1{%
    \edef\jsc@tmpa{\strip@pt#1}%
    \expandafter\jsc@fstrunc@a\jsc@tmpa.****\@nil}
  \def\jsc@fstrunc@a#1.#2#3#4#5#6\@nil{%
    \if#5*\else
      \edef\jsc@tmpa{#1%
      \ifnum#2#3>\z@ .#2\ifnum#3>\z@ #3\fi\fi}%
    \fi}
  \def\jsc@preadjust@extract@font{%
    \let\jsc@req@size\f@size
    \dimen@\f@size\p@ \jsc@invscale\dimen@\jsc@magscale
    \advance\dimen@.005pt\relax \jsc@fstrunc\dimen@
    \let\jsc@ref@size\jsc@tmpa
    \let\f@size\jsc@ref@size}
  \def\execute@size@function#1{%
    \let\jsc@cref@size\f@size
    \let\f@size\jsc@req@size
    \csname s@fct@#1\endcsname}
  \let\jsc@DeclareErrorFont\DeclareErrorFont
  \def\DeclareErrorFont#1#2#3#4#5{%
    \@tempdimc#5\p@ \@tempdimc\jsc@magscale\@tempdimc
    \edef\jsc@tmpa{{#1}{#2}{#3}{#4}{\strip@pt\@tempdimc}}
    \expandafter\jsc@DeclareErrorFont\jsc@tmpa}
  \def\gen@sfcnt{%
    \edef\mandatory@arg{\mandatory@arg\jsc@cref@size}%
    \empty@sfcnt}
  \def\genb@sfcnt{%
    \edef\mandatory@arg{%
      \mandatory@arg\expandafter\genb@x\jsc@cref@size..\@@}%
    \empty@sfcnt}
  \ifbxjs@TUenc\else
    \DeclareErrorFont{OT1}{cmr}{m}{n}{10}
  \fi
\fi
\def\jsc@smallskip{\vspace\jsc@smallskipamount}
\newskip\jsc@smallskipamount
\jsc@smallskipamount=3\jsc@mpt plus 1\jsc@mpt minus 1\jsc@mpt
\chardef\bxjs@periodchar=`\.
\bxjs@robust@def\bxjs@SE{%
  \ifnum\spacefactor<\@m \spacefactor\@m
  \else \spacefactor\sfcode\bxjs@periodchar
  \fi}
\ifbxjs@fix@at@cmd
  \def\@{\bxjs@SE{}}
\fi
\@onlypreamble\bxjs@patch@set@fontsize
\def\bxjs@patch@set@fontsize{%
  \ifx\bxjs@prev@set@fontsize\set@fontsize\else
    \def\bxjs@tmpa{\def\set@fontsize####1####2####3}%
\expandafter\bxjs@tmpa\expandafter{%
  \set@fontsize{##1}{##2}{##3}%
  \expandafter\def\expandafter\size@update\expandafter{%
    \size@update
    \jsFontSizeChanged}%
}
    \let\bxjs@prev@set@fontsize\set@fontsize
  \fi}
\bxjs@patch@set@fontsize
\AtEndOfClass{\bxjs@patch@set@fontsize}
\newcommand*\jsFontSizeChanged{%
  \jsZw=\f@size\p@
  \jsZw=\jsScale \jsZw
  \ifdim\parindent>\z@
    \if@english \parindent=1em
    \else       \parindent=1\jsZw
    \fi
  \fi\relax
  \jsResetDimen}
\providecommand*\jsResetDimen{}
\ifjsc@mag
  \let\jsc@setfontsize\@setfontsize
\else
  \def\jsc@setfontsize#1#2#3{%
    \@setfontsize#1{#2\jsc@mpt}{#3\jsc@mpt}}
  \ifjsWitheTeX\if j\jsEngine\else
    \def\jsc@setfontsize#1#2#3{%
      \edef\bxjs@sfs@next{%
        \unexpanded{\@setfontsize#1}%
           {\the\dimexpr#2\jsc@mpt\relax}{\the\dimexpr#3\jsc@mpt\relax}%
      }\bxjs@sfs@next}
  \fi\fi
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
  \let\bxjs@save@nomath\@nomath
  \let\@nomath\@gobble
  \@currsize\selectfont
  \let\@nomath\bxjs@save@nomath
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
    \jsc@setfontsize\normalsize\@xpt\@xiipt
  }{%else
    \jsc@setfontsize\normalsize\@xpt{\n@baseline}%
  }%
  \abovedisplayskip 11\jsc@mpt \@plus3\jsc@mpt \@minus4\jsc@mpt
  \abovedisplayshortskip \z@ \@plus3\jsc@mpt
  \belowdisplayskip 9\jsc@mpt \@plus3\jsc@mpt \@minus4\jsc@mpt
  \belowdisplayshortskip \belowdisplayskip
  \let\@listi\@listI}
%% initialize
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
    \jsc@setfontsize\small\@ixpt{11}%
  }{%else
    \jsc@setfontsize\small\@ixpt{13}%
  }%
  \abovedisplayskip 9\jsc@mpt \@plus3\jsc@mpt \@minus4\jsc@mpt
  \abovedisplayshortskip  \z@ \@plus3\jsc@mpt
  \belowdisplayskip \abovedisplayskip
  \belowdisplayshortskip \belowdisplayskip
  \def\@listi{\leftmargin\leftmargini
              \topsep \z@
              \parsep \z@
              \itemsep \parsep}}
\newcommand{\footnotesize}{%
  \bxjs@if@narrowbaselines{%
    \jsc@setfontsize\footnotesize\@viiipt{9.5}%
  }{%else
    \jsc@setfontsize\footnotesize\@viiipt{11}%
  }%
  \abovedisplayskip 6\jsc@mpt \@plus2\jsc@mpt \@minus3\jsc@mpt
  \abovedisplayshortskip  \z@ \@plus2\jsc@mpt
  \belowdisplayskip \abovedisplayskip
  \belowdisplayshortskip \belowdisplayskip
  \def\@listi{\leftmargin\leftmargini
              \topsep \z@
              \parsep \z@
              \itemsep \parsep}}
\newcommand{\scriptsize}{\jsc@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand{\tiny}{\jsc@setfontsize\tiny\@vpt\@vipt}
\if@twocolumn
  \newcommand{\large}{\jsc@setfontsize\large\@xiipt{\n@baseline}}
\else
  \newcommand{\large}{\jsc@setfontsize\large\@xiipt{17}}
\fi
\newcommand{\Large}{\jsc@setfontsize\Large\@xivpt{21}}
\newcommand{\LARGE}{\jsc@setfontsize\LARGE\@xviipt{25}}
\newcommand{\huge}{\jsc@setfontsize\huge\@xxpt{28}}
\newcommand{\Huge}{\jsc@setfontsize\Huge\@xxvpt{33}}
\newcommand{\HUGE}{\jsc@setfontsize\HUGE{30}{40}}
\everydisplay=\expandafter{\the\everydisplay \narrowbaselines}
\newcommand{\headfont}{\sffamily}
\setlength\columnsep{2\Cwd}
\setlength\columnseprule{\z@}
\setlength\lineskip{1\jsc@mpt}
\setlength\normallineskip{1\jsc@mpt}
\setlength\lineskiplimit{1\jsc@mpt}
\setlength\normallineskiplimit{1\jsc@mpt}
\renewcommand{\baselinestretch}{}
\setlength\parskip{\z@}
\if@slide
  \setlength\parindent{0\p@}
\else
  \setlength\parindent{1\Cwd}
\fi
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@onlypreamble\bxjs@bd@pre@geometry@hook
\let\bxjs@bd@pre@geometry@hook\@empty
\ifjsc@mag
\mag=\bxjs@param@mag
\fi
\setlength{\topskip}{10\jsc@mpt}
\def\bxjs@unit@trueQ{0.25truemm}\let\bxjs@unit@trueH\bxjs@unit@trueQ
\def\bxjs@unit@zw{\jsZw}\let\bxjs@unit@zh\bxjs@unit@zw
\@tempswafalse
\def\bxjs@tmpdo{\@ifnextchar\bgroup\bxjs@tmpdo@a\remove@to@nnil}
\def\bxjs@tmpdo@a#1{\edef\bxjs@tmpa{#1}%
  \@ifnextchar\bgroup\bxjs@tmpdo@b\remove@to@nnil}
\def\bxjs@tmpdo@b#1{\edef\bxjs@tmpa{\bxjs@tmpa,#1}%
  \@ifnextchar\@nnil\bxjs@tmpdo@c\remove@to@nnil}
\def\bxjs@tmpdo@c\@nnil{\@tempswatrue
  \edef\bxjs@param@paper{papersize={\bxjs@tmpa}}}
\expandafter\bxjs@tmpdo\bxjs@param@paper\@nnil
\if@tempswa\else
  \def\bxjs@tmpa{\@nil,\@nil}
  \def\bxjs@tmpdo#1,#2,#3\@nnil{%
    \def\bxjs@tmpb{#3}\ifx\bxjs@tmpa\bxjs@tmpb
      \@tempswatrue\edef\bxjs@param@paper{papersize={#1,#2}}\fi}
  \expandafter\bxjs@tmpdo\bxjs@param@paper,\@nil,\@nil\@nnil
\fi
\if@tempswa\else
  \def\bxjs@tmpa{\@nil*\@nil}
  \def\bxjs@tmpdo#1*#2*#3\@nnil{%
    \def\bxjs@tmpb{#3}\ifx\bxjs@tmpa\bxjs@tmpb
      \@tempswatrue\edef\bxjs@param@paper{papersize={#1,#2}}\fi}
  \expandafter\bxjs@tmpdo\bxjs@param@paper*\@nil*\@nil\@nnil
\fi
\edef\bxjs@layout@paper{%
  \ifjsc@mag truedimen,\fi
  \if@landscape landscape,\fi
  \bxjs@param@paper}
\def\bxjs@layout@base{%
  headheight=\topskip,headsep=6\jsc@mmm,nofoot,includeheadfoot,%
}
\ifbxjs@layout@buggyhmargin     %---
\edef\bxjs@layout{\bxjs@layout@base
  hmargin=36\jsc@mmm,hmarginratio=1:1,%
  vscale=0.83,vmarginratio=1:1,%
}
\else                           %---
\edef\bxjs@layout{\bxjs@layout@base
  hmargin=18\jsc@mmm,%
  vscale=0.83,vmarginratio=1:1,%
}
\fi                             %---
\ifx\bxjs@number@of@lines@opt\@undefined\else
  \bxjs@gset@tempcnta{\bxjs@number@of@lines@opt}
  \edef\bxjs@layout{\bxjs@layout lines=\the\@tempcnta,}
\fi
\newdimen\fullwidth
\newcommand\jsTextWidthLimit{40}
\@tempdima=\jsTextWidthLimit\Cwd
\ifx\bxjs@textwidth@limit@opt\@undefined\else
  \bxjs@gset@tempcnta{\bxjs@textwidth@limit@opt}
  \@tempdima=\@tempcnta\Cwd
\fi
\ifx\bxjs@textwidth@opt\@undefined\else
  \jsSetQHLength\@tempdima{\bxjs@textwidth@opt}
\fi
\edef\bxjs@textwidth@limit{\the\@tempdima}
\ifdim\@tempdima=\jsTextWidthLimit\Cwd\else
  \bxjs@invscale\@tempdima{\strip@pt\Cwd}
  \long\edef\jsTextWidthLimit{\strip@pt\@tempdima}
\fi
\def\bxjs@preproc@layout{%
  \edef\bxjs@save@ht@strutbox{\the\ht\strutbox}\ht\strutbox=10\jsc@mpt}
\def\bxjs@postproc@layout{%
  \ifx\bxjs@geometry@driver\relax\else
    \let\Gm@driver\bxjs@geometry@driver
  \fi
  \ht\strutbox=\bxjs@save@ht@strutbox\relax
  \ifbxjs@whole@zw@lines
    \@tempdimb=\textwidth
    \if@twocolumn \@tempdima=2\Cwd \else \@tempdima=1\Cwd \fi
    \advance\textwidth.005pt\relax
    \divide\textwidth\@tempdima \multiply\textwidth\@tempdima
    \advance\@tempdimb-\textwidth
    \advance\oddsidemargin 0.5\@tempdimb
    \advance\evensidemargin 0.5\@tempdimb
  \fi
  \fullwidth=\textwidth
  \@tempdima=\bxjs@textwidth@limit\relax
  \ifbxjs@whole@zw@lines
    \advance\@tempdima.005pt\relax
    \divide\@tempdima\Cwd \multiply\@tempdima\Cwd
  \fi
  \ifdim\textwidth>\@tempdima
    \textwidth=\@tempdima
    \addtolength\evensidemargin{\fullwidth-\textwidth}
  \fi
  \@tempdimb=\textheight
  \advance\textheight-\topskip
  \advance\textheight.005pt\relax
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
      -\textwidth-10\jsc@mmm-\marginparsep}
  \ifbxjs@whole@zw@lines
    \divide\marginparwidth\Cwd \multiply\marginparwidth\Cwd
  \fi
  \maxdepth=.5\topskip
  \stockwidth=\paperwidth
  \stockheight=\paperheight
}
\edef\jsGeometryOptions{%
  \bxjs@layout@paper,\bxjs@layout}
\def\bxjs@geometry@name{geometry}
\ifbxjs@old@hook@system
  \let\bxjs@apply@bd@pre@geometry@hook\AtBeginDocument
\else
  \def\bxjs@apply@bd@pre@geometry@hook{%
    \AddToHook{begindocument}[\bxjs@geometry@name]}
\fi
\ifx\bxjs@geometry\bxjs@geometry@@class
\ifbxjs@papersize
  \ifx\bxjs@driver@given\bxjs@driver@@dvipdfmx
    \PassOptionsToPackage{dvipdfm}{geometry}
  \else\ifx\bxjs@driver@given\bxjs@driver@@dvimode
    \PassOptionsToPackage{dvipdfm}{geometry}
  \fi\fi
  \let\bxPapersizeSpecialDone=t
\else
  \PassOptionsToPackage{driver=none}{geometry}
\fi
\bxjs@apply@bd@pre@geometry@hook{%
  \bxjs@bd@pre@geometry@hook
  \@nameuse{ImposeOldLuaTeXBehavior}}
\bxjs@preproc@layout
\edef\bxjs@next{%
  \noexpand\RequirePackage[\bxjs@layout@paper,\bxjs@layout]{geometry}%
}\bxjs@next
\bxjs@apply@bd@pre@geometry@hook{\@nameuse{RevokeOldLuaTeXBehavior}}
\let\bxjs@geometry@driver\Gm@driver
\bxjs@postproc@layout
\g@addto@macro\bxjs@bd@pre@geometry@hook{%
    \@ifpackagelater{geometry}{2010/02/12}{}{%else
      \PackageError\bxjs@clsname
       {Your 'geometry' package is too old (< v5.0)}%
       {\@ehc}%
      \let\Gm@driver\relax}%
    \ifjsWithpTeXng
      \ifx\Gm@driver\@empty
        \def\Gm@driver{pdftex}%
      \fi
    \fi}
\def\setpagelayout{%
  \bxjs@ifplus{\bxjs@setpagelayout@a\tw@}{%else
    \@ifstar{\bxjs@setpagelayout@a\@ne}{\bxjs@setpagelayout@a\z@}}}
\def\bxjs@setpagelayout@a#1#2{%
  \ifcase#1% modify
    \def\bxjs@next{\ifjsc@mag truedimen,\fi #2}%
  \or% reset(*)
    \def\bxjs@next{reset,\bxjs@layout@paper,#2}%
  \or% semireset(+)
    \def\bxjs@next{reset,\bxjs@layout@paper,\bxjs@layout@base,#2}%
  \fi
  \bxjs@preproc@layout
  \edef\bxjs@next{%
    \noexpand\geometry{\bxjs@next}%
  }\bxjs@next
  \bxjs@postproc@layout}
\else\ifx\bxjs@geometry\bxjs@geometry@@user
\g@addto@macro\bxjs@begin@document@hook{%
  \ifdim\textwidth=.5\maxdimen
    \ClassError\bxjs@clsname
     {Page layout is not properly set}%
     {\@ehd}%
  \fi}
\def\jsUseMinimalPageLayout{%
  \setlength{\textwidth}{6.5in}%
  \setlength{\textheight}{8in}}
\let\bxjs@geometry@driver\relax
\def\setpagelayout{%
  \bxjs@ifplus{\bxjs@pagelayout@a}{%else
    \@ifstar{\bxjs@pagelayout@a}{\bxjs@pagelayout@a}}}
\def\bxjs@pagelayout@a#1{%
  \ClassError\bxjs@clsname
   {Command '\string\setpagelayout' is not supported,\MessageBreak
    because 'geometry' value is not 'class'}\@eha}
\fi\fi
\footnotesep=11\jsc@mpt \footnotesep=0.7\footnotesep
\setlength{\skip\footins}{16\jsc@mpt \@plus 5\jsc@mpt \@minus 2\jsc@mpt}
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
\setlength\floatsep    {12\jsc@mpt \@plus 2\jsc@mpt \@minus 2\jsc@mpt}
\setlength\textfloatsep{20\jsc@mpt \@plus 2\jsc@mpt \@minus 4\jsc@mpt}
\setlength\intextsep   {12\jsc@mpt \@plus 2\jsc@mpt \@minus 2\jsc@mpt}
\setlength\dblfloatsep    {12\jsc@mpt \@plus 2\jsc@mpt \@minus 2\jsc@mpt}
\setlength\dbltextfloatsep{20\jsc@mpt \@plus 2\jsc@mpt \@minus 4\jsc@mpt}
\setlength\@fptop{0\jsc@mpt \@plus 1fil}
\setlength\@fpsep{8\jsc@mpt \@plus 2fil}
\setlength\@fpbot{0\jsc@mpt \@plus 1fil}
\setlength\@dblfptop{0\jsc@mpt \@plus 1fil}
\setlength\@dblfpsep{8\jsc@mpt \@plus 2fil}
\setlength\@dblfpbot{0\jsc@mpt \@plus 1fil}
\def\pltx@cleartooddpage{\clearpage\if@twoside
  \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage
    \if@twocolumn\hbox{}\newpage\fi
  \fi\fi}
\def\pltx@cleartoevenpage{\clearpage\if@twoside
  \ifodd\c@page
    \hbox{}\thispagestyle{empty}\newpage
    \if@twocolumn\hbox{}\newpage\fi
  \fi\fi}
\let\pltx@cleartorightpage\pltx@cleartooddpage
\let\pltx@cleartoleftpage\pltx@cleartoevenpage
\ifdim\vsize=\z@
\begingroup
\toks@\expandafter{\clearpage}
\xdef\clearpage{\noexpand\ifbxjs@after@preamble\the\toks@\noexpand\fi}
\endgroup
\fi
\if@openleft
  \let\cleardoublepage\pltx@cleartoleftpage
\else\if@openright
  \let\cleardoublepage\pltx@cleartorightpage
\fi\fi
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
\def\bxjs@maybe@autoxspacing{%
  \ifx\autoxspacing\@undefined\else \autoxspacing \fi}
\newif\if@omit@number
\def\ps@headings{%
  \let\@oddfoot\@empty
  \let\@evenfoot\@empty
  \def\@evenhead{%
    \if@mparswitch \hss \fi
    \underline{\hbox to \fullwidth{\bxjs@maybe@autoxspacing
        \textbf{\thepage}\hfil\leftmark}}%
    \if@mparswitch\else \hss \fi}%
  \def\@oddhead{\underline{\hbox to \fullwidth{\bxjs@maybe@autoxspacing
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
    \ifnum \c@secnumdepth >\z@ \bxjs@label@sect{section}\hskip1\jsZw\fi
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
\g@addto@macro\bxjs@begin@document@hook{\bxjs@decl@subtitle}
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
          {\maybeblue\hrule height0\jsc@mpt depth2\jsc@mpt\relax}\par
          \jsc@smallskip
          \@title
          \ifx\bxjs@subtitle\@undefined\else
            \par\vskip\z@
            {\small \bxjs@subtitle\par}
          \fi
          \jsc@smallskip
          {\maybeblue\hrule height0\jsc@mpt depth2\jsc@mpt\relax}\par
          \vfill
          {\small \@author}%
        \end{center}
      \else
      \vskip 60\jsc@mpt
      \begin{center}%
        {\LARGE \@title \par}%
        \ifx\bxjs@subtitle\@undefined\else
          \vskip5\jsc@mpt
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
        \vskip3\jsc@mpt
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
\def\bxjs@label@sect#1{%
  \@ifundefined{label#1}{\@nameuse{the#1}}{\@nameuse{label#1}}}
\def\@seccntformat#1{\bxjs@label@sect{#1}\quad}
\ifnum\bxjs@label@section=\bxjs@label@section@@compat\else
\def\@secapp{\presectionname}
\def\@secpos{\postsectionname}
\fi
\ifnum\bxjs@label@section=\bxjs@label@section@@modern
\def\labelsection{\@secapp\thesection\@secpos}
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
\ifnum\bxjs@everyparhook=\bxjs@everyparhook@@compat
  \let\bxjs@if@ceph\@firstofone
\else \let\bxjs@if@ceph\@gobble
\fi
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
          \protect\numberline{\bxjs@label@sect{#1}}%
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
        \protect\numberline{\bxjs@label@sect{#1}}%
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
      \else
        \clubpenalty \@clubpenalty
        \everypar\expandafter{\bxjs@if@ceph\everyparhook}%
      \fi\bxjs@if@ceph\everyparhook}%
  \else
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \fi
  \if@slide
    {\vskip\if@twocolumn-5\jsc@mpt\else-6\jsc@mpt\fi
     \maybeblue\hrule height0\jsc@mpt depth1\jsc@mpt
     \vskip\if@twocolumn 4\jsc@mpt\else 7\jsc@mpt\fi\relax}%
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
  \pltx@cleartooddpage
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
  \pltx@cleartooddpage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openleft
    \cleardoublepage
  \else\if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi\fi
  \@mainmatterfalse}
\newcommand\part{%
  \if@openleft
    \cleardoublepage
  \else\if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi\fi
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
      \par\vskip20\jsc@mpt
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
   \if@openleft %% added (2017/02/24)
    \null\thispagestyle{empty}\newpage
   \else\if@openright %% added (2016/12/13)
    \null\thispagestyle{empty}\newpage
   \fi\fi %% added (2016/12/13, 2017/02/24)
  \fi
  \if@restonecol
    \twocolumn
  \fi}
\newcommand{\chapter}{%
  \if@openleft\cleardoublepage\else
  \if@openright\cleardoublepage\else\clearpage\fi\fi
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
  \addtocontents{lof}{\protect\addvspace{10\jsc@mpt}}%
  \addtocontents{lot}{\protect\addvspace{10\jsc@mpt}}%
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
    {\z@}{\if@slide .4\Cvs \else \z@ \fi}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
    {.5\Cvs \@plus.3\Cdp}% 後アキ
    {\normalfont\large\headfont}}
\fi
\if@twocolumn
  \newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {\z@}{\if@slide .4\Cvs \else \z@ \fi}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
    {\if@slide .5\Cvs \@plus.3\Cdp \else \z@ \fi}%
    {\normalfont\normalsize\headfont}}
\fi
\let\jsJaChar\@empty
\newcommand\jsParagraphMark{\relax\jsJaChar{■}}
\let\bxjs@org@paragraph@mark\jsParagraphMark
\ifx\bxjs@paragraph@mark\@empty
  \let\jsParagraphMark\@empty
\else\ifx\bxjs@paragraph@mark\@undefined\else
  \long\edef\jsParagraphMark{\noexpand\jsJaChar{\bxjs@paragraph@mark}}
\fi\fi
\if@twocolumn
  \newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
    {\z@}{\if@slide .4\Cvs \else -1\jsZw\fi}% 改行せず 1\jsZw のアキ
    {\normalfont\normalsize\headfont\jsParagraphMark}}
\else
  \newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
    {0.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
    {\if@slide .5\Cvs \@plus.3\Cdp \else -1\jsZw\fi}% 改行せず 1\jsZw のアキ
    {\normalfont\normalsize\headfont\jsParagraphMark}}
\fi
\if@twocolumn
  \newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
    {\z@}{\if@slide .4\Cvs \@plus.3\Cdp \else -1\jsZw\fi}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
    {\z@}{\if@slide .5\Cvs \@plus.3\Cdp \else -1\jsZw\fi}%
    {\normalfont\normalsize\headfont}}
\fi
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
\newcommand*{\jsInJaParen}[1]{%
  \mbox{\jsInhibitGlue （#1）\jsInhibitGlue}}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{\jsInJaParen{\theenumii}}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi\jsInhibitGlue （\theenumii ）}
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
\newenvironment{chapterabstract}{%
  \begin{list}{}{%
    \listparindent=1\jsZw
    \itemindent=\listparindent
    \rightmargin=0pt
    \leftmargin=5\jsZw}\item[]}{\end{list}\vspace{\baselineskip}}
\ifbxjs@force@chapterabstract
  \let\abstract\chapterabstract
  \let\endabstract\endchapterabstract
\fi
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
    \pltx@cleartooddpage %% 2017-02-24
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse\newpage
    \fi
    \thispagestyle{empty}%
    \ifodd\c@page\setcounter{page}\@ne\else\setcounter{page}\z@\fi %% 2017-02-24
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
\setlength\arraycolsep{5\jsc@mpt}
\setlength\tabcolsep{6\jsc@mpt}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\jsc@mpt}
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
\setlength\abovecaptionskip{5\jsc@mpt} % 元: 10\p@
\setlength\belowcaptionskip{5\jsc@mpt} % 元: 0\p@
\long\def\@makecaption#1#2{{\small
  \advance\leftskip .0628\linewidth
  \advance\rightskip .0628\linewidth
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1\zwspace#2}%
  \ifdim \wd\@tempboxa <\hsize \centering \fi
  #1\zwspace#2\par
  \vskip\belowcaptionskip}}
\newif\if@jsc@warnoldfontcmd
\@jsc@warnoldfontcmdtrue
\newif\if@jsc@warnoldfontcmdexception
\@jsc@warnoldfontcmdexceptionfalse
\newcommand*{\jsc@DeclareOldFontCommand}[3]{%
  \g@addto@macro\bxjs@oldfontcmd@list{\do#1}%
  \DeclareOldFontCommand{#1}{%
    \bxjs@oldfontcmd{#1}#2%
  }{%
    \bxjs@oldfontcmd{#1}#3%
  }%
}
\DeclareRobustCommand*{\jsc@warnoldfontcmd}[1]{%
  \ClassInfo\bxjs@clsname
   {Old font command '\string#1' is used!!\MessageBreak
    The first occurrence is}%
}
\DeclareRobustCommand*{\allowoldfontcommands}{%
  \@jsc@warnoldfontcmdexceptiontrue}
\DeclareRobustCommand*{\disallowoldfontcommands}{%
  \@jsc@warnoldfontcmdexceptionfalse}
\let\bxjs@oldfontcmd@list\@empty
\def\bxjs@oldfontcmd#1{%
  \expandafter\bxjs@oldfontcmd@a\csname bxjs@ofc/\string#1\endcsname#1}
\def\bxjs@oldfontcmd@a#1#2{%
  \if@jsc@warnoldfontcmdexception\else
    \global\@jsc@warnoldfontcmdfalse
    \ifx#1\relax
      \global\let#1=t%
      \jsc@warnoldfontcmd{#2}%
    \fi
  \fi}
\def\bxjs@warnoldfontcmd@final{%
  \global\let\bxjs@warnoldfontcmd@final\@empty
  \let\@tempa\@empty
  \def\do##1{%
    \@ifundefined{bxjs@ofc/\string##1}{}{%else
      \edef\@tempa{\@tempa \space\string##1}}}%
  \bxjs@oldfontcmd@list
  \ifx\@tempa\@empty\else
    \ClassWarningNoLine\bxjs@clsname
     {Some old font commands were used in text:\MessageBreak
      \space\@tempa\MessageBreak
      You should note, that since 1994 LaTeX2e provides a\MessageBreak
      new font selection scheme called NFSS2 with several\MessageBreak
      new, combinable font commands. The
      class provides\MessageBreak
      the old font commands only for compatibility}
  \fi}
\ifbxjs@old@hook@system
  \AtEndDocument{%
    \g@addto@macro\clearpage{\bxjs@warnoldfontcmd@final}}
\else
  \AddToHook{enddocument/afterlastpage}{\bxjs@warnoldfontcmd@final}
\fi
\jsc@DeclareOldFontCommand{\mc}{\normalfont\mcfamily}{\mathmc}
\jsc@DeclareOldFontCommand{\gt}{\normalfont\gtfamily}{\mathgt}
\jsc@DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\jsc@DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\jsc@DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\jsc@DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\jsc@DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\jsc@DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\jsc@DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{1}
\newdimen\jsc@tocl@width
\newcommand{\tableofcontents}{%
  \settowidth\jsc@tocl@width{\headfont\prechaptername\postchaptername}%
  \settowidth\@tempdima{\headfont\appendixname}%
  \ifdim\jsc@tocl@width<\@tempdima \setlength\jsc@tocl@width{\@tempdima}\fi
  \ifdim\jsc@tocl@width<2\jsZw \divide\jsc@tocl@width by 2 \advance\jsc@tocl@width 1\jsZw\fi
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
    \addvspace{2.25em \@plus\jsc@mpt}%
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
    \addvspace{1.0em \@plus\jsc@mpt}
    \begingroup
      \parindent\z@
      \rightskip\@tocrmarg
      \parfillskip-\rightskip
      \leavevmode\headfont
      \setlength\@lnumwidth{\jsc@tocl@width}\advance\@lnumwidth 2.683\jsZw
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
 % \newcommand*{\l@section}{\@dottedtocline{1}{1\jsZw}{3.683\jsZw}}
\newcommand*{\l@section}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima -1\jsZw
          \@dottedtocline{1}{\@tempdima}{3.683\jsZw}}
\newcommand*{\l@subsection}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 2.683\jsZw
          \@dottedtocline{2}{\@tempdima}{3.5\jsZw}}
\newcommand*{\l@subsubsection}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 6.183\jsZw
          \@dottedtocline{3}{\@tempdima}{4.5\jsZw}}
\newcommand*{\l@paragraph}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 10.683\jsZw
          \@dottedtocline{4}{\@tempdima}{5.5\jsZw}}
\newcommand*{\l@subparagraph}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 16.183\jsZw
          \@dottedtocline{5}{\@tempdima}{6.5\jsZw}}
\newdimen\@lnumwidth
\def\numberline#1{\hb@xt@\@lnumwidth{#1\hfil}\hspace{0pt}}
\def\jsTocLine{\leaders\hbox{%
  $\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill}
\def\@dottedtocline#1#2#3#4#5{\ifnum #1>\c@tocdepth \else
  \vskip \z@ \@plus.2\jsc@mpt
  {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
   \interlinepenalty\@M
   \leavevmode
   \@lnumwidth #3\relax
   \advance\leftskip \@lnumwidth \null\nobreak\hskip -\leftskip
    {#4}\nobreak
    \jsTocLine \nobreak\hb@xt@\@pnumwidth{%
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
  \@jsc@warnoldfontcmdexceptiontrue
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
    \parskip\z@ \@plus .3\jsc@mpt\relax
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
\newcommand{\indexspace}{\par \vskip 10\jsc@mpt \@plus5\jsc@mpt \@minus3\jsc@mpt\relax}
\newcommand\seename{\if@english see\else →\fi}
\newcommand\alsoname{\if@english see also\else →\fi}
\ifx\pltx@foot@penalty\@undefined
  \let\footnotes@ve=\footnote
  \def\footnote{\jsInhibitGlue\footnotes@ve}
  \let\footnotemarks@ve=\footnotemark
  \def\footnotemark{\jsInhibitGlue\footnotemarks@ve}
\fi
\def\thefootnote{\ifnum\c@footnote>\z@\leavevmode\lower.5ex\hbox{*}\@arabic\c@footnote\fi}
\renewcommand{\footnoterule}{%
  \kern-2.6\jsc@mpt \kern-.4\p@
  \hrule width .4\columnwidth
  \kern 2.6\jsc@mpt}
\@addtoreset{footnote}{chapter}
\long\def\@footnotetext{%
  \insert\footins\bgroup
    \normalfont\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \def\@currentcounter{footnote}%
    \protected@edef\@currentlabel{%
       \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces}%
      \futurelet\jsc@next\jsc@fo@t}
\def\jsc@fo@t{\ifcat\bgroup\noexpand\jsc@next \let\jsc@next\jsc@f@@t
                                \else \let\jsc@next\jsc@f@t\fi \jsc@next}
\def\jsc@f@@t{\bgroup\aftergroup\jsc@@foot\let\jsc@next}
\def\jsc@f@t#1{#1\jsc@@foot}
\def\jsc@@foot{\@finalstrut\strutbox\color@endgroup\egroup
  \ifx\pltx@foot@penalty\@undefined\else
    \ifhmode\null\fi
    \ifnum\pltx@foot@penalty=\z@\else
      \penalty\pltx@foot@penalty
      \pltx@foot@penalty\z@
    \fi
  \fi}
\newcommand\@makefntext[1]{%
  \advance\leftskip 3\jsZw
  \parindent 1\jsZw
  \noindent
  \llap{\@makefnmark\hskip0.3\jsZw}#1}
\let\jsInhibitGlueAtParTop\@empty
\def\everyparhook{\jsInhibitGlueAtParTop}
\ifnum\bxjs@everyparhook=\bxjs@everyparhook@@compat
\g@addto@macro\bxjs@begin@document@hook{\everypar{\everyparhook}}
\fi
\ifx j\jsEngine
\def\@inhibitglue{%
  \futurelet\@let@token\@@inhibitglue}
\begingroup
\let\GDEF=\gdef
\let\CATCODE=\catcode
\let\ENDGROUP=\endgroup
\CATCODE`k=12
\CATCODE`a=12
\CATCODE`n=12
\CATCODE`j=12
\CATCODE`i=12
\CATCODE`c=12
\CATCODE`h=12
\CATCODE`r=12
\CATCODE`t=12
\CATCODE`e=12
\GDEF\KANJI@CHARACTER{kanji character }
\ENDGROUP
\def\@@inhibitglue{%
  \expandafter\expandafter\expandafter\jsc@inhibitglue\expandafter\meaning\expandafter\@let@token\KANJI@CHARACTER\relax\jsc@end}
\expandafter\def\expandafter\jsc@inhibitglue\expandafter#\expandafter1\KANJI@CHARACTER#2#3\jsc@end{%
  \def\jsc@ig@temp{#1}%
  \ifx\jsc@ig@temp\@empty
    \ifnum\the\inhibitxspcode`#2=2\relax
      \inhibitglue
    \fi
  \fi}
\fi
\ifnum\bxjs@everyparhook=\bxjs@everyparhook@@compat
\def\@doendpe{%
  \@endpetrue
  \def\par{%
    \@restorepar\clubpenalty\@clubpenalty\everypar{\everyparhook}\par\@endpefalse}%
  \everypar{{\setbox\z@\lastbox}\everypar{\everyparhook}\@endpefalse\everyparhook}}
\def\@setminipage{%
  \@minipagetrue
  \everypar{\@minipagefalse\everypar{\everyparhook}}%
}
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
    \fi\everyparhook}%
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
\fi
\ifnum\bxjs@everyparhook=\bxjs@everyparhook@@none\else
\AtEndOfClass{%
\def\@gnewline #1{%
  \ifvmode
    \@nolnerr
  \else
    \unskip \reserved@e {\reserved@f#1}\nobreak \hfil \break \null
    \jsInhibitGlue \ignorespaces
  \fi}
}
\fi
\if@jslogo
  \IfFileExists{jslogo.sty}{%
    \RequirePackage{jslogo}%
  }{%
    \ClassWarningNoLine\bxjs@clsname
     {The package 'jslogo' is not installed.\MessageBreak
      It is included in the recent release of\MessageBreak
      the 'jsclasses' bundle}
  }
\fi
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
\@onlypreamble\bxjs@decl@Seireki@cmds
\@tempswafalse
\if p\jsEngine \@tempswatrue \fi
\if n\jsEngine \@tempswatrue \fi
\bxjs@cond\if@tempswa\fi{%
\newif\ifjsSeireki \jsSeirekitrue
\def\bxjs@decl@Seireki@cmds{%
  \def\西暦{\jsSeirekitrue}%
  \def\和暦{\jsSeirekifalse\bxjs@wareki@used}}
\def\Seireki{\jsSeirekitrue}
\def\Wareki{\jsSeirekifalse\bxjs@wareki@used}
\def\bxjs@if@use@seireki{\bxjs@cond\ifjsSeireki\fi}
\def\bxjs@iai{\noexpand~}
}{%
\newif\if西暦 \西暦true
\def\bxjs@decl@Seireki@cmds{%
  \def\西暦{\西暦true}%
  \def\和暦{\西暦false\bxjs@wareki@used}}
\def\Seireki{\西暦true}
\def\Wareki{\西暦false\bxjs@wareki@used}
\def\bxjs@if@use@seireki{\bxjs@cond\if西暦\fi}
\let\bxjs@iai\@empty
}
\bxjs@decl@Seireki@cmds
\newif\ifbxjs@bxwareki@avail
\IfFileExists{bxwareki.sty}{%
  \if \if n\jsEngine \ifjsWitheTeX T\else F\fi\else T\fi T%
    \RequirePackage{bxwareki}[2018/04/08]%v0.2
    \bxjs@bxwareki@availtrue
  \fi}{}
\ifbxjs@bxwareki@avail \let\bxjs@wareki@used\@empty
\else
  \bxjs@robust@def\bxjs@wareki@used{%
    \global\let\bxjs@wareki@used\@empty
    \ClassWarning\bxjs@clsname
     {Wareki mode is not supported, since\MessageBreak
      'bxwareki' is unavailable, reported}}
  \g@addto@macro\bxjs@begin@document@hook{%
    \let\bxjs@wareki@used\@empty}
\fi
\ifbxjs@bxwareki@avail
  \let\jayear\warekiyear
  \def\bxjs@tmpa{H}\ifx\bxjs@tmpa\warekigengoinitial
    \newcount\heisei \heisei=\value{warekiyear}
  \fi
\else
  \edef\jayear{\the\year \bxjs@iai}
\fi
\begingroup
\let\bxjs@next\relax
\ifbxjs@bxwareki@avail \ifx\warekigengo\@empty\else
  \def\bxjs@next{\warekitoday}
  \bxjs@test@engine\unexpanded{%
    \def\bxjs@next{\unexpanded\expandafter{\warekitoday}}}
\fi\fi
\def\!#1#2#3{\noexpand#1\noexpand#2\noexpand#3}
\ifx\bxjs@iai\@empty \let\!\@empty \fi
\xdef\bxjs@today{%
  \if@english
    \ifcase\month\or
      January\or February\or March\or April\or May\or June\or
      July\or August\or September\or October\or November\or December\fi
      \space\number\day, \number\year
  \else
    \ifx\bxjs@next\relax \expandafter\@firstoftwo
    \else \noexpand\bxjs@if@use@seireki
    \fi {%
      \number\year\bxjs@iai\!年%
      \bxjs@iai\number\month\bxjs@iai\!月%
      \bxjs@iai\number\day\bxjs@iai\!日%
    }{\bxjs@next}%
  \fi}
\endgroup
\let\today\bxjs@today
\g@addto@macro\bxjs@begin@document@hook{%
  \ifx\bbl@jpn@maybekansuji\@undefined\else
    \bxjs@decl@Seireki@cmds
    \g@addto@macro\datejapanese{%
      \let\today\bxjs@today}%
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
\bxjs@robust@def\jsStrongText{\bxjs@strong@text}%
\chardef\bxjs@strong@level=0
\DeclareRobustCommand*\jsStrongDeclare[1]{%
  \bxjs@set@array@from@clist{bxjs@strong}{#1}%
  \chardef\bxjs@strong@level\z@}
\jsStrongDeclare{\bfseries}
\def\bxjs@strong@text{%
  \bxjs@csletcs{bxjs@tmpa}{bxjs@strong/\the\bxjs@strong@level}%
  \ifx\bxjs@tmpa\relax
    \bxjs@advance@qc\bxjs@strong@level\m@ne \bxjs@strong@text
  \else \bxjs@advance@qc\bxjs@strong@level\@ne \bxjs@tmpa
  \fi}
\@onlypreamble\bxjs@const@unit
\@onlypreamble\bxjs@const@unit@a
\ifjsWitheTeX
  \def\bxjs@const@unit#1#2#3{%
    \protected\edef#1{\dimexpr\the\dimexpr#3\relax\relax}}
\else
  \let\bxjs@Ct\fontdimen \font\bxjs@Ut=cmtex9 at 0.98245pt
  \bxjs@Ct8\bxjs@Ut=8sp \bxjs@Ct16\bxjs@Ut=\z@
  \def\bxjs@const@unit#1#2{%
    \expandafter\bxjs@const@unit@a\csname bxjs@#2@\endcsname#1}
  \def\bxjs@const@unit@a#1#2#3{%
    \chardef#1\bxjs@Ct8\bxjs@Ut \bxjs@advance@qc#1\@ne \bxjs@Ct8\bxjs@Ut#1sp
    \bxjs@Ct#1\bxjs@Ut=#3\relax \def#2{\bxjs@Ct#1\bxjs@Ut}}
\fi
\bxjs@const@unit\jQ{jQ}{0.25mm}
\let\jH\jQ
\ifjsc@mag
  \@tempdimb=\jsBaseFontSize\relax
  \edef\bxjs@tmpa{\strip@pt\@tempdimb}%
  \@tempdima=2.5mm
  \bxjs@invscale\@tempdima\bxjs@tmpa
  \bxjs@const@unit\trueQ{trueQ}{\@tempdima}
  \@tempdima=10pt
  \bxjs@invscale\@tempdima\bxjs@tmpa
  \bxjs@const@unit\bxjs@truept{truept}{\@tempdima}
\else \let\trueQ\jQ \let\bxjs@truept\p@
\fi
\let\trueH\trueQ
\@tempdima\trueQ \bxjs@invscale\@tempdima\jsScale
\bxjs@const@unit\ascQ{ascQ}{\@tempdima}
\@tempdima\bxjs@truept \bxjs@invscale\@tempdima\jsScale
\bxjs@const@unit\ascpt{ascpt}{\@tempdima}
\DeclareRobustCommand*\jsJaFontSize[2]{%
  \begingroup
    \bxjs@jafontsize@a{#1}%
    \@tempdimb\jsInverseScale\@tempdima
    \bxjs@jafontsize@a{#2}%
    \xdef\bxjs@g@tmpa{%
      \noexpand\fontsize{\the\@tempdimb}{\the\@tempdima}}%
  \endgroup\bxjs@g@tmpa}
\def\bxjs@jafontsize@a#1{%
  \bxjs@parse@qh{#1}%
  \ifx\bxjs@tmpb\relax \def\bxjs@tmpb{#1}\fi
  \@defaultunits\@tempdima\bxjs@tmpb pt\relax\@nnil}
\def\bxjs@let@lenexpr{\edef}
\def\bxjs@kanjiskip{0pt}
\DeclareRobustCommand*\jsSetKanjiSkip[1]{%
  \bxjs@let@lenexpr\bxjs@kanjiskip{#1}%
  \bxjs@reset@kanjiskip}
\newcommand*\jsGetKanjiSkip{%
  \bxjs@kanjiskip}
\newif\ifbxjs@kanjiskip@enabled \bxjs@kanjiskip@enabledtrue
\bxjs@robust@def\jsEnableKanjiSkip{%
  \bxjs@kanjiskip@enabledtrue
  \bxjs@reset@kanjiskip}
\bxjs@robust@def\jsDisableKanjiSkip{%
  \bxjs@kanjiskip@enabledfalse
  \bxjs@reset@kanjiskip}
\bxjs@robust@def\bxjs@reset@kanjiskip{%
  \ifbxjs@kanjiskip@enabled
    \setlength{\@tempskipa}{\bxjs@kanjiskip}%
  \else \@tempskipa\z@
  \fi
  \jsApplyKanjiSkip\@tempskipa}
\let\jsApplyKanjiSkip\@gobble
\def\bxjs@xkanjiskip{0pt}
\DeclareRobustCommand*\jsSetXKanjiSkip[1]{%
  \bxjs@let@lenexpr\bxjs@xkanjiskip{#1}%
  \bxjs@reset@xkanjiskip}
\newcommand*\jsGetXKanjiSkip{%
  \bxjs@xkanjiskip}
\newif\ifbxjs@xkanjiskip@enabled \bxjs@xkanjiskip@enabledtrue
\bxjs@robust@def\jsEnableXKanjiSkip{%
  \bxjs@xkanjiskip@enabledtrue
  \bxjs@reset@xkanjiskip}
\bxjs@robust@def\jsDisableXKanjiSkip{%
  \bxjs@xkanjiskip@enabledfalse
  \bxjs@reset@xkanjiskip}
\bxjs@robust@def\bxjs@reset@xkanjiskip{%
  \ifbxjs@xkanjiskip@enabled
    \setlength{\@tempskipa}{\bxjs@xkanjiskip}%
  \else \@tempskipa\z@
  \fi
  \jsApplyXKanjiSkip\@tempskipa}
\let\jsApplyXKanjiSkip\@gobble
\g@addto@macro\jsResetDimen{%
  \bxjs@reset@kanjiskip
  \bxjs@reset@xkanjiskip}
\AtEndOfPackage{%
\jsSetKanjiSkip{0pt plus.1\jsZw minus.01\jsZw}%
\ifx\jsDocClass\jsSlide \jsSetXKanjiSkip{0.1em}%
\else \jsSetXKanjiSkip{0.25em plus 0.15em minus 0.06em}%
\fi
}
\ifbxjs@jaspace@cmd
  \def\jaenspace{\hskip.5\jsZw\relax}
  \def\jathinspace{\hskip\bxjs@xkanjiskip\relax}
  \def\　{\zwspace}
  \bxjs@protected\def\bxjs@choice@jathinspace{%
    \relax\ifmmode \mskip\medmuskip
    \else \jathinspace\ignorespaces
    \fi}
  \jsAtEndOfClass{%
    \ifjsWitheTeX \let\>\bxjs@choice@jathinspace
    \else \def\>{\protect\bxjs@choice@jathinspace}%
    \fi}
  \DeclareRobustCommand*{\jaspace}[1]{%
    \expandafter\ifx\csname bxjs@jaspace@@#1\endcsname\relax
      \ClassError\bxjs@clsname
       {Unknown jaspace: #1}{\@eha}%
    \else
      \csname bxjs@jaspace@@#1\endcsname
    \fi}
  \def\bxjs@jaspace@@zenkaku{\hskip 1\jsZw\relax}
  \def\bxjs@jaspace@@nibu{\hskip .5\jsZw\relax}
  \def\bxjs@jaspace@@shibu{\hskip .25\jsZw\relax}
\fi
\bxjs@pre@jadriver@hook
\input{bxjsja-\bxjs@jadriver.def}
\endinput
%%
%% End of file `bxjsbook.cls'.
