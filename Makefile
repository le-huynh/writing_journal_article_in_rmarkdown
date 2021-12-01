# Rule
# target : prerequisite1 prerequisite2 prerequisite3
#	(tab)recipe

.PHONY: all clean

################################################################################
# 
# Part 1: Data for data analysis
# 
# Run scripts to generate dataset for data analysis
# 
################################################################################

data/process/newdata.csv: \
code/get_newdata.R\
data/raw/rawdata.csv
	Rscript code/get_newdata.R


################################################################################
# 
# Part 2: Formal data analysis
# 
# Run scripts to fit models, etc.
# 
################################################################################

#data/RDSmodel/model_name.rds: \
#code/bayes_model.R\
#code/get_tidy_data.R\
#data/process/data_name.csv
#	Rscript code/bayes_model.R


################################################################################
# 
# Part 3: Figure and table generation
# 
# Run scripts to generate figures and tables
# 
################################################################################

results/figures/boxplot.pdf results/figures/boxplot.tiff: \
code/plot_boxplot.R\
data/process/newdata.csv
	Rscript code/plot_boxplot.R

results/tables/mean_median.pdf: \
code/table_mean_median.R\
data/process/newdata.csv
	Rscript code/table_mean_median.R

################################################################################
# 
# Part 4: Pull it all together
# 
# Render the manuscript
# 
################################################################################
elsevier/manuscript.pdf: \
elsevier/manuscript.Rmd\
elsevier/appendix.Rmd\
elsevier/credit.Rmd\
elsevier/highlight.Rmd\
elsevier/interest.Rmd\
elsevier/thanks.Rmd\
elsevier/cover_letter.Rmd\
elsevier/response_to_reviewers.Rmd\
data/process/newdata.csv\
results/figures/boxplot.pdf\
results/pictures/2021.png\
elsevier/harmful-algae.csl\
elsevier/bibliography.bib
	Rscript -e 'rmarkdown::render("$<", output_format = "all")'

all: elsevier/manuscript.pdf
