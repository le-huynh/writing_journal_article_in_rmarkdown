#---
# get_newdata.R
# 
# This RScript:
# - generate processed data for data analysis
#
# Dependencies...
# data/raw/rawdata.csv
#
# Produces...
# data/process/newdata.csv
#---

library(here)
library(dplyr)

read.csv(here("data", "raw", "rawdata.csv")) %>%
	write.csv("data/process/newdata.csv", row.names = FALSE)