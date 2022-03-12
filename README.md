
## Lehuynh's personal notes

### Overview

	project
	|- README.md	   # the top level description of content (this doc)
	|
	|- elsevier/		# for Elsevier journals
	| |- manuscript.Rmd	# executable Rmarkdown for this study
	| |- manuscript.tex	# TeX version of *.Rmd file (for journal submission)
	| |- manuscript.pdf	# PDF version of *.Rmd file
	| |- my_header.tex	# LaTeX header file to format pdf version of manuscript
	| |- bibliography.bib	# BibTeX formatted references
	| |- XXXX.csl		# csl file to format references for journal XXX
	| |- *.Rmd		# child documents
	| +- other files	# used to export .Rmd file to .pdf file
	|
	|- springer/		# template for Springer journals, from `rticles` package
	|
	|- data			# raw and primary data, are not changed once created
	| |- raw/		# raw data, will not be altered
	| +- process/		# cleaned data, will not be altered once created
	|
	|- code/		# any programmatic code
	|
	|- results		# all output from workflows and analyses
	| |- tables/		# text version of tables to be rendered with kable in R
	| |- figures/		# graphs, likely designated for manuscript figures
	| +- pictures/		# diagrams, images, and other non-graph graphics
	|
	|- exploratory/		# exploratory data analysis for study
	| |- notebook/		# preliminary data analyses
	| |- text/		# all information related to journal, meeting, outline, etc.
	| +- scratch/		# temporary files that can be safely deleted or lost
	|
	+- Makefile		# executable Makefile for this study

#### Notes
- See `/elsevier/manuscript.Rmd` and `/elsevier/manuscript.pdf` for notes of rmarkdown  
- R package: [lehuynh](https://github.com/le-huynh/lehuynh), template `draft_elsevier`.

----------------------------------------
- R packages: `patchwork`, `prettydoc`, `xaringan`

