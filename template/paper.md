---
title: A template document
author: 
- name: Author 1
  affiliation: Department of text editors, Vim University
  email: author.1@vim.co.uk
- name: Author 2
  affiliation: Department of text editors, The Emacs Institute
  email: author.2@emacs.co.uk
date: 21 October, 2015
fullpage:
abstract: |
  This is the abstract of a template document which can be edited. The content of this document can be modified and added to as necessary. It provides examples of how to handle maths, tables, data analysis and images when making a document using knitr.
---

<!--
Notes can be added in the source code of the Rmd file.
-->



# Introduction

The text in this document can be replaced. The source code (`template.Rmd`) for this document can be found at \url{https://github.com/tomravalde/workflow}, and the PDF can be found at. The GitHub repository provides the requirements and instructions in order to be able to produce this document and others like it.

## Maths

You can mix and match markdown with \LaTeX syntax, for example maths as in Equation \eqref{eq:pythagoras}:

\begin{align}
a^2 = b^2 + c^2.
\label{eq:pythagoras}
\end{align}

## Tables

When typesetting tables (such as Table \ref{tab:text-editors}, I like to use the `xtable` function (from the `xtable` R package). This allows you to create your table in a spreadsheet which you then save as a CSV file (see `text-editors.csv`).

\begin{sidewaystable}[ht]
\centering
{\small
\begin{tabular}{lp{7cm}p{7cm}}
  \toprule
Function & vi & Emacs \\ 
  \midrule
Keystroke execution & vi editing retains each permutation of typed keys . This creates a path in the decision tree which unambiguously identifies any command. & Emacs commands are key combinations for which modifier keys are held down while other keys are pressed; a command gets executed once completely typed. This still forms a decision tree of commands, but not one of individual keystrokes . \\ 
  Memory usage and customizability & Historically, vi is a smaller and faster program, but with less capacity for customization. The vim version of vi has evolved to provide significantly more functionality and customization than vi, making it comparable to Emacs [ notes 1 ] . vi start-up time is near instantaneous for small text files, while vim is almost as fast. & Emacs takes longer to start up (even compared to vim) and requires more memory . However, it is highly customizable and includes a large number of features, as it is essentially an execution environment for a Lisp program designed for text-editing. \\ 
  User environment & vi was originally exclusively used inside of a text-mode console, offering no graphical user interface (GUI). Most modern vi derivatives, e.g. MacVim and gVim, include GUIs. However, support for proportionally spaced fonts remains absent. Also lacking is support for different sized fonts in the same document. & Emacs, while also initially designed for use on a console, grew a GUI fairly early on due to its Lisp machine heritage. Current Emacs GUIs include full support for proportionate spacing and font-size variation. \\ 
  Function/navigation interface & vi uses distinct editing modes . & Emacs uses metakey chords. [ notes 2 ] \\ 
  Keyboard & vi uses no <Alt> key and seldom uses the <Ctrl> key. So vi uses only most of the "usual" keys. & Emacs uses <Alt> and <Ctrl> keys, and observes the <Shift> variety regularly . Emacs uses all the usual keys regularly, which tends to encourage ambidextrous usage of their symmetry. \\ 
  Language and script support & vi has rudimentary support for languages other than English. Vim is partially multilingual, with support for European, Arabic, Hebrew, and Far East Asian language support only. Notably, Indic language and script support is absent. & Emacs has full support for all Unicode-compatible writing systems. \\ 
   \bottomrule
\end{tabular}
}
\caption{The differences between vi and Emacs, from Wikipedia (\url{http://en.wikipedia.org/wiki/Editor_war}).\label{tab:text-editors}} 
\end{sidewaystable}

## Processing and presenting data with knitr

By the magic of knitr, data can be processed and presented in the same source code as the rest of the document. An example is given in Figure \ref{fig:google-fight}.

![\label{fig:google-fight}Google fights results.](figures/google-fight-1.pdf) 

## Images

Unfortunately, controlling the size of a figure with markdown syntax can't be done. So generally for figures, I use standard \LaTeX code, as for Figure \ref{fig:xkcd-text-editors}.

\begin{figure}[htbp]
        \centering
        \includegraphics[width=1\textwidth]{img/real_programmers.png}
        \caption{Text editors according to XKCD (\url{http://xkcd.com/378/).}}
        \label{fig:xkcd-text-editors}
\end{figure}
