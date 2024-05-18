
## Writing Scientific Manuscript using Rmarkdown

This repository is a comprehensive yet simple example of a fully-fledged scientific project, encompassing every aspect from data to submission. It includes:

- `Data/`: Example dataset used in the project. The raw data serves as the source material but is not directly used for analysis; instead, the analysis relies on the processed data, derived from the raw data through code.
- `Code/`: Example scripts and code utilized to acquire processed data, create plot, and generate table.
- `Results/`: Visualizations, tables, and any output derived from the analysis code.
- `Exploratory/`: Additional materials for exploratory analysis or supplementary findings.
- `Submission/`: Contains a template manuscript encompassing thorough guidelines for creating the final manuscript, ensuring adherence to publication standards.
- `Makefile`: Automates the compilation process using [GNU Make](https://www.gnu.org/software/make/), streamlining the generation of the final manuscript.

### Notes
- See [`/elsevier/manuscript.Rmd`](https://github.com/le-huynh/writing_journal_article_in_rmarkdown/blob/master/elsevier/manuscript.Rmd) and [`/elsevier/manuscript.pdf`](https://github.com/le-huynh/writing_journal_article_in_rmarkdown/blob/master/elsevier/manuscript.pdf) for notes of Rmarkdown and LaTeX.  
- Get the manuscript template at the R package [`lehuynh`](https://github.com/le-huynh/lehuynh), template `draft_elsevier`.

### Repo Overview

	project
	|- README.md		# the top level description of content (this doc)
	|
	|- elsevier/		# submission for Elsevier journals
	| |- manuscript.Rmd	# executable Rmarkdown for this study
	| |- manuscript.tex	# TeX version of *.Rmd file (for journal submission)
	| |- manuscript.pdf	# PDF version of *.Rmd file
	| |- manuscript.docx	# docx version of *.Rmd file
	| |- my_header.tex	# LaTeX header file to format pdf version of manuscript
	| |- bibliography.bib	# BibTeX formatted references
	| |- XXXX.csl		# csl file to format references for journal XXX
	| |- *.Rmd		# child documents
	| +- other files	# optional files utilized for exporting the .Rmd file to the .pdf format (safe for deletion)
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
	| |- springer/		# template for Springer journals, from `rticles` package
	| +- scratch/		# temporary files that can be safely deleted or lost
	|
	+- Makefile		# executable Makefile for this study


### Contribution
Contributions and improvements to this repository are welcome! 
If you have suggestions, additional templates, or enhancements, feel free to create pull requests or open issues.

### Acknowledgements
This project is inspired by the [new_project](https://github.com/SchlossLab/new_project/tree/master) repository created by the Schloss lab and the [rticles](https://pkgs.rstudio.com/rticles/) package.

