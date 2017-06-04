%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%需要加载的包
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{xeCJK}
\usepackage{fontspec, xunicode, xltxtra}
\usepackage{ifthen}%这个宏包提供逻辑判断命令
\usepackage{fancyhdr}
\usepackage[marginal]{footmisc}%引入宏包，使得脚注首行不缩进。
\usepackage{prettyref}
\usepackage{indentfirst} 
\usepackage{lastpage}                                           
\usepackage{amsmath,amsfonts,amssymb}    % EPS 图片支持
\usepackage{graphicx}
\usepackage[a4paper,hmargin=0.0cm,vmargin=0.0cm,columnsep=2.02em]{geometry}
\usepackage{multirow}
%\usepackage{color}
\usepackage{subfigure}   % 使用子图形
%\usepackage{1-in-2}
\usepackage[labelfont=bf]{caption}
\usepackage{booktabs}
\usepackage{layout}
\usepackage{epstopdf}
\usepackage{multicol}
\usepackage[original]{abstract}%摘要分栏的宏包
\usepackage{titlesec} %其中 center 可使标题居中,还可设为 raggedleft (居左，默认),  
\usepackage{titletoc}%要调整章节标题在目录页中的格式，可以用titletoc宏包 title of contents  
%\usepackage{bibspacing}
%\setlength{\bibspacing}{\baselineskip}
%\usepackage{gbt-7714-2015}
%\usepackage[super,square,comma,sort&compress]{natbib}
\usepackage[numbers,sort&compress]{natbib}
\setlength{\bibsep}{0.0ex}
%\usepackage[hyperref=true,backend=biber,sorting=none,backref=true]{biblatex}
%\usepackage{filecontents}
%\addbibresource{thesis-ref.bib}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{left=1.6cm,right=1.8cm,top=2.0cm,bottom=1.7cm,headheight=0.6cm}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%字体设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------------xeCjk设置中文字体--------------
\setmainfont{Times New Roman}
\setCJKmainfont[ItalicFont={KaiTi}, BoldFont={SimHei}]{SimSun}
\newcommand{\song}{\CJKfamily{song}}        % 宋体   (windows自带simsun.ttf)  

\setCJKfamilyfont{xs}{Nsimsun}             %新宋体 xs  
\newcommand{\xs}{\CJKfamily{xs}}  
\setCJKfamilyfont{kai}{KaiTi}       %楷体2312  kai  
\newcommand{\kai}{\CJKfamily{kai}} 
\setCJKfamilyfont{yh}{Microsoft YaHei} %微软雅黑 yh  
\newcommand{\yh}{\CJKfamily{yh}} 
\setCJKfamilyfont{hei}{SimHei}               %黑体  hei  
\newcommand{\hei}{\CJKfamily{hei}}       % 黑体   (Windows自带simhei.ttf)  
\setCJKfamilyfont{msunicode}{Arial Unicode MS}            %Arial Unicode MS: msunicode  
\newcommand{\msunicode}{\CJKfamily{msunicode}}  

\setCJKfamilyfont{li}{LiSu}                    %隶书  li  
\newcommand{\li}{\CJKfamily{li}}  
\setCJKfamilyfont{yy}{YouYuan}     %幼圆  yy  
\newcommand{\yy}{\CJKfamily{yy}}  
\setCJKfamilyfont{xm}{MingLiU}                %细明体  xm  
\newcommand{\xm}{\CJKfamily{xm}}  
\setCJKfamilyfont{xxm}{PMingLiU}     %新细明体  xxm  
\newcommand{\xxm}{\CJKfamily{xxm}}
\setCJKfamilyfont{hwsong}{STSong}    %华文宋体  hwsong  
\newcommand{\hwsong}{\CJKfamily{hwsong}}  
\setCJKfamilyfont{hwzs}{STZhongsong}  %华文中宋  hwzs  
\newcommand{\hwzs}{\CJKfamily{hwzs}} 
\setCJKfamilyfont{hwfs}{STFangsong}      %华文仿宋  hwfs  
\newcommand{\hwfs}{\CJKfamily{hwfs}} 
\setCJKfamilyfont{hwxh}{STXihei}          %华文细黑  hwxh  
\newcommand{\hwxh}{\CJKfamily{hwxh}} 
\setCJKfamilyfont{hwl}{STLiti}                  %华文隶书  hwl  
\newcommand{\hwl}{\CJKfamily{hwl}}  
\setCJKfamilyfont{hwxw}{STXinwei}          %华文新魏  hwxw  
\newcommand{\hwxw}{\CJKfamily{hwxw}} 
\setCJKfamilyfont{hwk}{STKaiti}              %华文楷体  hwk  
\newcommand{\hwk}{\CJKfamily{hwk}}  
\setCJKfamilyfont{hwxk}{STXingkai}      %华文行楷  hwxk  
\newcommand{\hwxk}{\CJKfamily{hwxk}} 
\setCJKfamilyfont{hwcy}{STCaiyun}           %华文彩云 hwcy  
\newcommand{\hwcy}{\CJKfamily{hwcy}} 
\setCJKfamilyfont{hwhp}{STHupo}           %华文琥珀   hwhp  
\newcommand{\hwhp}{\CJKfamily{hwhp}} 
\setCJKfamilyfont{fzyao}{FZYaoTi}              %方正姚体  fzy  
\newcommand{\fzyao}{\CJKfamily{fzyao}} 
\setCJKfamilyfont{fzshu}{FZShuTi}                                  %方正舒体 fzshu  
\newcommand{\fzshu}{\CJKfamily{fzshu}} 

%------------------------------设置字体大小------------------------%  
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     %初号  
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} %小初号  
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      %一号  
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      %二号  
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  %小二号  
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  %三号  
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}%     四号  
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  %小四号  
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    %五号  
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   %小五号  
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  %六号  
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    %七号  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%页眉页脚设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{plain}{
\fancyhf{}
\setboolean{first}{false}
\lhead{第~XX~卷\quad 第~X~期\\
\scriptsize{XXXX~年~XX~月}}
\chead{\centering{中~~华~~大~~学\\
\scriptsize{\textbf{Jourinal of *****}}}}
\rhead{Vol. XX, No. XX\\
\scriptsize{May, 2017}}
\lfoot{}
\cfoot{}
\rfoot{}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 首页后根据奇偶页不同设置页眉页脚
% R,C,L分别代表左中右，O,E代表奇偶页
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newboolean{first}%定义一个布尔变量用于判断是否为首页
\setboolean{first}{true}%设定fist变量初值为true
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE]{第~XX~卷}
\fancyhead[CE]{中~~华~~大~~学}
\fancyhead[LE,RO]{\thepage}
\fancyhead[CO]{张三，李四**********}
\fancyhead[LO]{第~X~期}
\lfoot{}
\cfoot{}
\rfoot{}

\renewcommand{\thefootnote}{}%脚注不编号
\newcommand{\makefirstpageheadrule}{%定义首页页眉线绘制命令，这里为等宽双线
\makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.4pt}}%
\rule[0.7\baselineskip]{\headwidth}{0.4pt}}
\newcommand{\makeheadrule}{%定义正文页页眉线绘制命令，单线
\rule[0.7\baselineskip]{\headwidth}{0.4pt}}
\renewcommand{\headrule}{%重定义headrule命令
\ifthenelse{\boolean{first}}{\makeheadrule}{\makefirstpageheadrule} }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%各种距离设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-----------------页眉相关-----------------
\setlength{\topskip}{10.pt}
\setlength{\headsep}{-0.pt}

%-----------------页面布局-----------------
\geometry{left=1.6cm,right=1.8cm,top=2.0cm,bottom=1.7cm}

%-----------------分栏与正文距离-----------
\setlength{\multicolsep}{0.0pt plus 0.0pt minus 0.0pt}% 50% of original
%-----------------题目与正文-----------------
\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}
\titlespacing*{\section} {0pt}{0pt plus 0pt minus .0pt}{6pt plus .0pt}
\titlespacing*{\subsection} {0pt}{0ex plus 0ex minus .0ex}{6pt plus .0pt}
\titlespacing*{\subsubsection} {0pt}{0ex plus 0ex minus .0ex}{0pt plus .0pt}
%-----------------段落与行----------------
\setlength{\parskip}{0ex}
\setlength{\parsep}{0ex} %段落间距
\setlength{\lineskip}{0ex}
\renewcommand{\baselinestretch}{1.3}%设置行间距

% 段间距：\lineskip + \parskip
% 行间距：\lineskip = \baselineskip * \baselinestretch

%----------------调整列表行间距---------------
\usepackage{paralist} 
\let\itemize\compactitem 
\let\enditemize\endcompactitem 
\let\enumerate\compactenum 
\let\endenumerate\endcompactenum 
\let\description\compactdesc 
\let\enddescription\endcompactdesc
%---------------图表caption-------------------
\setlength{\abovecaptionskip}{0pt}%修改Caption距离
\setlength{\belowcaptionskip}{-2pt}

%------------------ 数学公式设置 -----------------
\setlength{\abovedisplayskip}{3pt}     %公式前的距离
\setlength{\belowdisplayskip}{3pt}     %公式后面的距离
%\setlength{\arraycolsep}{2pt}   %在一个array中列之间的空白长度, 因为原来的太宽了

%\makeatletter
%\renewcommand\normalsize{%
%   \@setfontsize\normalsize\@xpt\@xiipt
%   \abovedisplayskip 6\p@ \@plus0\p@ \@minus0\p@
%   \abovedisplayshortskip \z@ \@plus0\p@
%   \belowdisplayshortskip 6\p@ \@plus0\p@ \@minus0\p@
%   \belowdisplayskip \abovedisplayskip
%   \let\@listi\@listI}
%\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%标题命令
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------------------------标题名称中文化-----------------------------%  
\renewcommand\abstractname{\hei 摘\ 要}  
\renewcommand\refname{\hei 参考文献}  
\renewcommand\figurename{\hei 图}  
\renewcommand\tablename{\hei 表}  
%------------------------------定理名称中文化-----------------------------%  
\newtheorem{dingyi}{\hei 定义~}[section]  
\newtheorem{dingli}{\hei 定理~}[section]  
\newtheorem{yinli}[dingli]{\hei 引理~}  
\newtheorem{tuilun}[dingli]{\hei 推论~}  
\newtheorem{mingti}[dingli]{\hei 命题~}  
\newtheorem{lizi}{{例}}  


