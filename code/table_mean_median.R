#---
# table_mean_median.R
#
# This Rscript:
# * generate a table
# * save table in .pdf file
#
# Dependencies...
# data/process/newdata.csv
#
# Produces...
# results/table/mean_median.pdf
#---
library(here)
library(tidyverse)
library(kableExtra)

data <- read.csv(here("data", "process", "newdata.csv")) %>%
	group_by(supp) %>%
	summarise(median = median(len),
		mean = mean(len))

kbl(data, 
      "latex",
      booktabs = T,
      col.names = c("Supplement type",
      	          "Median",
	      	"Mean"), 
      align = "cll") %>%
save_kable("results/tables/mean_median.pdf")

# sometimes failed to save table because magik::image_read() cannot be used 
# properly on some computers

