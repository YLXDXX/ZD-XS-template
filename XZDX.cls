\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{XZDX}[shui 西藏大学本科毕业论文模板]

%基本设置

\PassOptionsToPackage{no-math}{fontspec}%让正文中的字体设置不影响数学公式
\LoadClass[UTF8,a4paper,zihao=-4,oneside,]{ctexbook} %纸张、正文字号
%\RequirePackage{no-math}{fontspec}%此处无效，ctexbook已经先行调用




\RequirePackage[top=25mm,bottom=20mm,left=30mm,right=30mm]{geometry} %页边距



%封面信息变量
\newtoks\Type 
\newtoks\YanXi
\newtoks\ZhuanYe
\newtoks\TiMu
\newtoks\XingMing
\newtoks\XueHao
\newtoks\JiaoShi
\newtoks\ZhiCheng
\newtoks\ShiJian




%字体设置


% 英文字体配置部分
%\setmainfont{Times New Roman}%英文正文
\setmainfont{times.ttf}[Path = fonts/,BoldFont = timesbd.ttf ,ItalicFont = timesi.ttf ,BoldItalicFont = timesbi.ttf ]

%\setsansfont{Source Sans Pro}%英文无衬线
%\setmonofont{Source Code Pro}%英文等宽
%这里会影响公式字体出问题，需用fontspec的no-math选项解决

% 中文字体配置部分
\setCJKmainfont[AutoFakeBold=true,AutoFakeSlant=true]{宋体}%中文正文
%\emph \textbf \bfseries  \textit \itshape 等对中文有效
%也就有了中文对应的粗体和斜体
%\setCJKsansfont{黑体}%中文无衬线
%\setCJKmonofont{楷体}%中文等宽




%自定义字体命令
%\setCJKfamilyfont{boldsong}{Source Han Serif SC Heavy}
%\setCJKfamilyfont{hwxk}{HYXiaoLiShuJ} %使用华文行楷字体
%\newcommand{\myfonta}{\CJKfamily{hwxk}}

%\addbibresource{date/refer.bib} %参考文献

\RequirePackage{graphicx} %图片png、jpg等
\RequirePackage{svg} %svg图片
\graphicspath{{picture/}} %图片存放目录,可直接引用




%单个汉字字宽 \ccwd
%em、 ex
%使用粗体：\bfseries 或者 \textbf{text} ，由于windows字体的原因，若使用加粗命令，则会变成黑体，设置成其它字体即可，例如 fontset=fontset






%\RequirePackage{titlesec}%页面样式：标题
\RequirePackage{titleps}%页面样式：页眉页脚
\RequirePackage{titletoc}%页面样式：目录
%\RequirePackage{fancyhdr}%页眉页角
%\RequirePackage{tocloft}%目录

%设置目录格式
\titlecontents{chapter}
[0pt]%左间距
{\addvspace{2pt}\zihao{4}\heiti\thecontentslabel}%格式
{}
{}%
{\titlerule*[0.5pc]{$\cdot$}\contentspage}

\titlecontents{section}
[\ccwd]%左间距
{\addvspace{1pt}\zihao{-4}\songti\thecontentslabel}%格式
{}
{}%
{\titlerule*[0.5pc]{$\cdot$}\contentspage}


%设置页眉页脚
%此处的奇偶页不同设置只有在twoside下才有效
\newpagestyle{my-body-style}[]
{
\sethead[][][]
{}{}{}
\setfoot[][\zihao{5}\thepage][]
{}{\zihao{5}\thepage}{}
}



%超链接
\RequirePackage[bookmarksnumbered,draft=false,colorlinks=true,CJKbookmarks=true,linkcolor=black,citecolor=black,urlcolor=black,hyperindex]{hyperref}
% bookmarksnumbered 在pdf书签中加入章节序号




%\RequirePackage[font=small,labelfont={bf,color=main}]{caption,subcaption}%对图片表格标题和子标题的控制
% 采用带圈数字符号代替*号脚注
%\xeCJKsetcharclass{`①}{`⑩}{1}





%基本宏包
\RequirePackage{tabularray}%表格
\RequirePackage{tikz}%绘图
\RequirePackage{mathdots} %添加斜向省略号
\RequirePackage{xcolor}%定义了一些颜色
\RequirePackage{enumerate} %列项序号编号
\RequirePackage{extarrows} %箭头等号上添加文字
\RequirePackage{amssymb} %数学公式符号
\RequirePackage{amsmath} %数学公式
\RequirePackage{mathtools} %数学公式扩展宏包,提供了公式编号定制和更多的符号、矩阵等。
\RequirePackage{cases} %使用括号对公式等进行并列排列
%\RequirePackage{amsthm}%证明定理等环境，与精细设定ntheorem有冲突
\RequirePackage{amsfonts} %用来输入各种符号的特殊形态，例如字母的花体、空心体等，配合amssymb使用
\RequirePackage{mathrsfs} %数学中的花体(不是太花的)
\RequirePackage[upright=true]{derivative}%分数导数微分偏微分增量改变量等 
\RequirePackage{tabularray} %表格
 \RequirePackage{braket} %量子算符宏包 
\RequirePackage{esint} % various fancy integral symbols %积分符号
\RequirePackage{xcolor}%定义了一些颜色








\RequirePackage[bodytextleadingratio=1.9166]{zhlineskip} %设置正文行间距
%行距是指一行字体加空白区域的总距离，而不仅仅是间隔区域
%并且行距由字体大小决定，比如10号字体下的单倍行距为10*1.3 = 13 磅。
%正文字体小四号，为12磅，即「12bp」
%小四字体下1.25倍行距对应的bp数为12*1.3*1.25 
%
%正文行间距固定为23磅
%LaTeX正文基础行距1.2
%在一般情况下，CTEX 会默认用 linespread=1.3 这个文档类选项将中文的行距
%设置为字号的 1.56 倍（基础行距是字号的 1.2 倍，而 1.2 × 1.3 = 1.56）。
%对应的行间距倍数为 23/12=1.9166
%可通过\the\baselineskip查看当前行距
%其\baselineskip表示两行基准线之间的距离
%在英文中调整行间距
%一般用\renewcommand{\baselinestretch}{1.2} 或 \linespread{1.2}



\ctexset{
tocdepth = section, %目录编号层数
secnumdepth = subsubsection, %章节标题编号层数
appendix/numbering=true,
appendix/name = {附录},
%figurename = 图,
%tablename =表,
chapter = {
	pagestyle = my-body-style,
	name = {,、},
	format= \centering\zihao{-2}\heiti,
	aftername =,
	beforeskip=14.4bp, %0.8*18bp
	afterskip=14.4bp, %0.5*18bp %规定是0.5倍的行间距，怀疑弄错了，改为0.8倍
},
section = {
	name = {（,）},
	number = \chinese{section},
	format= \raggedright\zihao{4}\heiti,
	aftername =,
	beforeskip=7bp, %0.5*14bp
	afterskip=7bp, %0.5*14bp
},
subsection = {
	name = {,．},
	number = \arabic{section},
	format=\raggedright \zihao{-4}\heiti,
	aftername =,
	beforeskip=6bp, %0.5*12bp
	afterskip=6bp, %0.5*12bp
},
subsubsection = {
	name = {（,）},
	number = \arabic{section},
	format= \raggedright\zihao{-4}\heiti,
	aftername =,
	beforeskip=6bp, %0.5*12bp
	afterskip=6bp, %0.5*12bp
},
contentsname = 目\hspace{2\ccwd}录,
}









%对图片表格标题和子标题的控制
%Figures, Subfigures and Tables
\RequirePackage{caption}
\RequirePackage{subcaption}

%图片、表格标题的设置

\captionsetup{font=normalsize,}%图、表等标题用小四号
\captionsetup[sub]{font=normalsize}%图、表等标题用小四号
\captionsetup{labelsep=space} %表的标号与名字间的分隔
\DeclareCaptionFormat{my-tab}{\heiti #1#2#3\par}%表格标题特殊设置
\captionsetup[table]{format=my-tab}%表格标题特殊设置









%脚注使用带圈数字
%https://www.latexstudio.net/archives/51644.html

\newfontfamily\nmfont[Path=fonts/]{SH-number-Regular.otf} %安装后的字体名称 SH number Regular
%%定义带圈数字命令
\newcommand{\myquan}[1]{{\nmfont \symbol{#1}}}
\newcommand{\mykk}[1]{\myquan{\numexpr32+#1}}%\kk{<参数范围1-95>}96、97、98、99分别用\quan{196} \quan{197} \quan{199} \quan{201}
\newcommand*\mykkctr[1]{%
	\protect\mykk{\number\numexpr\value{#1}\relax}}


%这字体有个问题，显示无误，但对应的Unicode有问题，复制带圈文字会出错
%更好的是使用Source Han Serif 的字体
%方法如下
%\RequirePackage{fontspec,xunicode-addon}
%\newfontfamily\mynmfont{SH-number-Regular.otf}\setmainfont{Source Han Serif}
% {\mynmfont\textcircled{25}}
%这样Source Han Serif和textcircled配合，可以有很好的效果
%甚至可以用中文{\mynmfont\textcircled{中}}




%设置脚注样式
\renewcommand*\thefootnote{\mykkctr{footnote}}

%在页面底部的脚注内容中，取消编号的上标样式
%https://zhuanlan.zhihu.com/p/74515148
\RequirePackage{xpatch}

% cancel the superscript style of counter used in footnote text
\xpatchcmd\@makefntext
{{\hss\@makefnmark}}
{{\hss\@makefnmark@nosuperscript}\space}
{}{\fail}

% old: superscript style
% \def\@makefnmark{\hbox{\@textsuperscript{\normalfont\@thefnmark}}}

% new: normal style, lower baseline
\def\@makefnmark@nosuperscript{\lower .0ex \hbox{\normalfont\@thefnmark}}

%注释与正文之间加细线分隔
% shorten footnote rule
\xpatchcmd\footnoterule
{.4\columnwidth}
{1.7in height 1bp } %线宽度为1磅，线的长度不应超过纸张的三分之一宽度
{}{\fail}

\renewcommand{\footnotesize}{\zihao{5}\songti} %脚注字宋体5号字





%参考文献
\RequirePackage[sort&compress]{gbt7714}
\bibliographystyle{gbt7714-numerical}%选择参考文献样式「顺序编码制」
%需要使用bibtex引擎编译






\RequirePackage{zhlipsum}%中文假文\zhlipsum[2-4]
\RequirePackage{lipsum}%英文徦文




%
%下面是自定义命令部分
%


%封面
\newcommand{\cover}{
\thispagestyle{empty}
\begin{center}
	\centering 
\includegraphics{picture/西藏在学-名字.png}\\\vspace{1cm}
\includegraphics{picture/西藏大学-校徽.png}\\\vspace{1.5cm}
{\zihao{1}\songti\textbf{\the\Type}}\\\vspace{3cm}
\zihao{3}
\songti\bfseries
\begin{tblr}{
			colspec={cm{0.5\ccwd}ccm{0.5\ccwd}c},
			%hline{1,7} = {1pt,solid},
		} 
		\makebox[4em][s]{{\zihao{3}院系}}&：& \SetCell[c=4]{c} {\zihao{4}\makebox[15\ccwd][c]{\the\YanXi}} &&& \\\cline{3-6}
		\makebox[4em][s]{{\zihao{3}专业年级}}&：&\SetCell[c=4]{c} {\zihao{4}\makebox[15\ccwd][c]{\the\ZhuanYe}}&&& \\\cline{3-6}
		\makebox[4em][s]{{\zihao{3}题目}}&：&\SetCell[c=4]{c} {\zihao{4}\makebox[15\ccwd][c]{\the\TiMu}}&&& \\\cline{3-6}
		\makebox[4em][s]{{\zihao{3}学生姓名}}&：& {\zihao{4}\makebox[6\ccwd][c]{\the\XingMing}}&学号&：&{\zihao{4}\makebox[4\ccwd][c]{\the\XueHao}} \\\cline{3-3}\cline{6-6}
		\makebox[4em][s]{{\zihao{3}指导教师}}&：&{\zihao{4}\makebox[6\ccwd][c]{\the\JiaoShi}}&职称&：&{\zihao{4}\makebox[4\ccwd][c]{\the\ZhiCheng}} \\\cline{3-3}\cline{6-6}
		\makebox[4em][s]{{\zihao{3}完成时间}}&：&\SetCell[c=4]{c} {\zihao{4}\makebox[15\ccwd][c]{\the\ShiJian}}&&& \\\cline{3-6}
\end{tblr}

\end{center}
\clearpage
%\newpage\null\thispagestyle{empty}\newpage
}




%声明
\newcommand{\statement}{
\thispagestyle{empty}
\begin{center}
	\songti\zihao{2}
	~\\
	~\\ %空二行
	\textbf{郑\hspace{\ccwd}重\hspace{\ccwd}声\hspace{\ccwd}明}
\end{center}

{\zihao{4}
{\linespread{2.0}\selectfont            %2倍行距
\vspace*{1.8cm}本人呈交的学位论文，是在导师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料真实可靠。尽我所知，除文中已经注明引用的内容外，本学位论文的研究成果不包含他人享有著作权的内容。对本论文所涉及的研究工作做出贡献的其他个人和集体，均已在文中以明确的方式标明。本学位论文的知识产权归属于培养单位。
\par}
\vspace{4.5cm}
\noindent 本人签名：\underline{\hspace{44.45mm}} \hfill 日期：\underline{\hspace{44.45mm}}%
}
\clearpage
%\newpage\null\thispagestyle{empty}\newpage
}




%中文摘要
\newcommand{\ZhAbstract}[2]{
\thispagestyle{empty}
\begin{center}
	\heiti\zihao{-2}
	~\\ %空一行
	摘\hspace{2\ccwd}要
\end{center}
{\linespread{1.5}\selectfont %1.5倍行距
	~\par %空一行
	#1
}

~\\ %空一行
\noindent {\heiti 关键词}： #2
\clearpage
}




%英文摘要
\newcommand{\EnAbstract}[2]{
\thispagestyle{empty}
\begin{center}
	\zihao{2}
	~\\ %空一行
	\textbf{Abstract}
\end{center}
{\linespread{1.5}\selectfont %1.5倍行距
	~\par %空一行
	#1
}

~\\ %空一行
\noindent {\textbf{Key words}}： #2 
\clearpage
}



%目录
\AtBeginDocument{\addtocontents{toc}{\protect\thispagestyle{empty}}} 
\newcommand{\mulucreat}{
	\pagestyle{empty}
	\tableofcontents
	\clearpage
	\setcounter{page}{1}
	\pagestyle{my-body-style}
}


%结论
\newcommand{\Conclude}{
\chapter*{\texorpdfstring{结论}{结论}}
\phantomsection %让超链接能够正确链接，一般是加入目录用
\addcontentsline{toc}{chapter}{\texorpdfstring{结论}{结论}}
}


%参考文献
%需要使用bibtex引擎编译
\newcommand{\PrintBibliography}{
\bibliography{date/refer.bib}
\phantomsection %让超链接能够正确链接，一般是加入目录用
\addcontentsline{toc}{chapter}{参考文献}
\clearpage
\ctexset{chapter/numbering=false,} %设置相关科研成果目录和致谢的标题
}


%相关科研成果目录和致谢的标题也可以手动设置
%例如
%\chapter*{\texorpdfstring{致\hspace{2\ccwd}谢}{致谢}}
%\phantomsection %让超链接能够正确链接，一般是加入目录用
%\addcontentsline{toc}{chapter}{\texorpdfstring{致谢}{致谢}}







%附录
\newcommand{\Appendix}{
\appendix%附录开始
%附录前面需加入\appendix命令
\ctexset{
section = {
	name = {附,\ },
	number =\Alph{chapter}\arabic{section},
},
subsection = {
	name = {附,\ },
	number =\Alph{chapter}\arabic{section}.\arabic{subsection},
},
subsubsection = {
	name = {附,\ },
	number =\Alph{chapter}\arabic{section}.\arabic{subsection}.\arabic{subsubsection},
},}
}
