################################################################################
#	Makefile for RPS LaTeX template
#
#	@ipg - 2020-04-14
#
#	Instructions:
#	- Put this makefile in the same folder with all the RPS tex file
#	- Run the following command from shell terminal to create PDF files:
#		> make silabus
#	- Run the following command to clean up folder from temporary files:
#		> make clean
#
#	Notes/assumption:
#	- All the RPS latex files should have *.tex extension
#	- All the RPS latex files are in one directory/folder
#	- RPS latex filename: silabus*.tex
#
################################################################################

LATEXPATTERNFILE	= silabus
MYDIR 				= $(shell pwd)
REMOVED				= aux log out synctex.gz

silabus: *.tex
	@echo 'LaTeX files in this folder:'
	@for f in $(shell ls ${MYDIR}/${LATEXPATTERNFILE}*.tex); do \
		echo $${f}; \
		pdflatex -synctex=1 -interaction=nonstopmode $${f}; \
	done
	@echo '#########################################################################'
	@echo 'PDF files created in this folder:'
	@for f in $(shell ls ${MYDIR}/${LATEXPATTERNFILE}*.pdf); do \
		echo $${f}; \
	done

clean:
	@echo 'Clean folder from LaTeX temporary files'
	@echo 'Removed temporary files extension: *.aux, *.log, *.out, *.synctex.gz'
	@for i in $(REMOVED); do \
		echo 'Remove'; echo $(LATEXPATTERNFILE)*.$$i; \
		rm -f $(LATEXPATTERNFILE)*.$$i; \
	done
