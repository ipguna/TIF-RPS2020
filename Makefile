filename=MAIN_LATEX_FILE_NAME_WITHOUT_.tex

silabus: *.tex
	pdflatex -synctex=1 -interaction=nonstopmode silabus-rps-v01

pdf: *.tex
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}
