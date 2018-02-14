%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{norm-resume}[2015/12/25 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1cm, vmargin=1cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Raleway-ExtraLight} % The font used where \sfffamily is called

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(72,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
Last Updated on \today % Last Updated text
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------
% \usepackage{hyperref} % Required for adding links	and customizing them
\usepackage[usenames,dvipsnames]{xcolor} % Required for specifying custom colours
\definecolor{linkcolour}{rgb}{0,0.2,0.6} % Link colour
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour,linkcolor=linkcolour} % Set link colours throughout the document
% \usepackage{,colortbl} % Advanced table configurations
% \usepackage{array} % Custom arrangement for the columns
% \usepackage{multirow} %rows spanning multiple rows

\newcommand{\namesection}[5]{ % Defines the command for the main heading
\noindent\begin{minipage}[t]{0.65\textwidth}
    \vfill
    {   \fontsize{27.5pt}{40pt}
        \fontspec{Lato-Reg}\selectfont #1 
        \fontspec{Lato-Bol}\selectfont #2
    } \\
    % \vfil
    \emph{Targeted Interactions, Sears Hodings India}
    \vfill
\end{minipage}   
\hfill
\begin{minipage}[t]{0.27\textwidth}
{
{\Large\Letter} {\href{mailto:jeet.patel022@gmail.com}{\fontspec{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}}\\
\vspace{0.8mm}
{\Large\faGithub} {\href{https://github.com/jeetp465}{\fontspec{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #4}}\\
\vspace{0.8mm}
{\Large\phone} {\fontspec{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #5}
}   
\end{minipage} 
\vspace{0.6mm}
\hrule
\vspace{0.6mm}
\hrule
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontspec{Lato-Bol}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\fontspec{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontspec{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\raggedright\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\scshape\fontspec{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {\hfill #1\\} \normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec{Raleway-Regular}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

\newcommand{\duration}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {\hfill #1\\} \normalfont}

\newcommand{\category}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec{Raleway-Regular}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

%----------------------------------------------------------------------------------------
%	TEXT STYLING
%----------------------------------------------------------------------------------------

\newcommand{\emphasize}[1]{ % Used for emphasizing text
\color{subheadings}\raggedright\scshape\fontspec{Raleway-ExtraLight}\selectfont {#1} \normalfont}

\newcommand{\bgemph}[1]{ % Used for emphasizing text
\color{subheadings}\raggedright\scshape\fontspec{Raleway-Light}\selectfont {#1} \normalfont}

\newcommand{\lgbf}[1]{ % Light bold, for highliting important phrases
\color{subheadings}\raggedright\fontspec{Raleway-SemiBold}\selectfont {#1} \normalfont}

\newcommand{\lgemph}[1]{ % Light bold, for highliting important phrases
\color{subheadings}\raggedright\fontspec{Raleway-Regular}\selectfont {#1} \normalfont}


%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}