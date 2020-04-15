# TIF-RPS2020
RPS 2020 for UB-TIF

This page contains the RPS (Rencana Pembelajaran Semester) / Syllabus for various courses offered starting from February 2020. RPS document template in LaTeX is also provided, along with the associated Makefile (for its compilation) and PDF results.

&nbsp;<details><summary>TABLE OF CONTENT</summary>
- [TIF-RPS2020](#tif-rps2020)
  * [How to Use](#how-to-use)
    + [Download](#download)
    + [Writing the RPS document](#writing-the-rps-document)
    + [Compiling](#compiling)
    + [Cleaning up](#cleaning-up)
  * [To Do List](#to-do-list)
  * [Revision Notes: 20200415](#revision-notes--20200415)
  * [Revision Notes: 20200313](#revision-notes--20200313)
    + [Uploaded](#uploaded)
    + [Work in progress](#work-in-progress)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>
&nbsp;</details>


## How to Use 

### Download

To use the document in this repository, there are several ways such as follows:

1. Download individual document by clicking the link for each document where you would be taken to a page showing the document and a button to download it

2. Clone the whole repository to your local computer by invoking git pull command from your terminal

3. Clone/download the whole repository using the download button on this page (see top right corner); you will be provided with the option to download the repo in a zip file. Once it is downloaded, unzip the file into your chosen folder in your computer. You will be able to start working on your own document immediately.

### Writing the RPS document

To write the RPS document, use the LaTeX template provided and edit it by filling in the appropriate sections/parts of the document. I recommend copy the RPS LaTeX template into different file with unique name for your RPS document, and working on that copied version of the document.

Many parts of the content are put into various macros definitions on the template. That way, you would not have to worry about the layout of the document; LaTeX will sort it out for you.

The outline of the course in the form of the table is given at the end of the document. The table is put in a landscape environment. To write out the table in a normal (portrait) environment, just comment out the landscape environment in the template. Note however that when this table is write out in the portrait environment, you have to re-adjust the width of the columns (I have used this in the DSP RPS file provided).  

### Compiling

To compile the document, you can use the Makefile provided. Use the command 

> make silabus

from your terminal. 

Alternatively, you can always use the compile/build facility in your LaTeX IDE of your chosen. I have tried this using LaTeX IDE TexStudio on Mac/Windows; and there's no reason that it will not work on other IDEs such as TexMaker, TexShop, Lyx, or even Vi/Vim.

For the LaTeX compilation, I recommend using pdflatex; this is actually the set I have writen in the Makefile provided. In that way, we can produce the PDF file directly from the LaTeX source.

### Cleaning up

LaTeX compilation will results in some temporary files that might cluttered your folder (e.g., files with extension *.out, *.aux, *log, and *.synctex.gz). To clean up the folder, use the Makefile provided with the following command from terminal:

> make clean  

## To Do List

- Put the content  definition into separate LaTeX file
- Bilingual version (English and Indonesian) on one file
- Put the content definition into cvs file and use a shell script to read this file and put them into appropriate parts of the LaTeX template

## Revision Notes: 20200415

1. Update package: remove subfigure with subfig package
2. Update Makefile

## Revision Notes: 20200313

### Uploaded

1. [TIF208\_DSP\_RPS\_v01.pdf](https://github.com/ipguna/TIF-RPS2020/blob/master/TIF208\_DSP\_RPS\_v01.pdf) - RPS for Digital Signal Processing (TIF208, 4th Semester, 3 SKS)
2. [silabus-rps-v01.pdf](https://github.com/ipguna/TIF-RPS2020/blob/master/silabus-rps-v01.pdf) - RPS template example in PDF (English only version)
3. [silabus-rps-v01.tex](https://github.com/ipguna/TIF-RPS2020/blob/master/silabus-rps-v01.tex) - RPS LaTeX template (English only version)
3. [UBCrestVertical.png](https://github.com/ipguna/TIF-RPS2020/blob/master/UBCrestVertical.png) - UB Crest / logo for use with the RPS LaTeX template 
4. [Makefile](https://github.com/ipguna/TIF-RPS2020/blob/master/Makefile) - Makefile for LaTeX compilation

### Work in progress

- Syllabus for Discrete Mathematics
- Syllabus for Calculus 2 for IT Engineers
- Syllabus for Wireless Communications

