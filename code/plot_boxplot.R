#---
# plot_boxplot.R
#
# This Rscript:
# - generate a boxplot
# - save plot in different formats: pdf, tiff
#
# Dependencies...
# data/process/newdata.csv
#
# Produces...
# results/figures/boxplot.pdf
# results/figures/boxplot.tiff
#---

library(here)
library(ggplot2)
library(tidyverse)
library(lehuynh)

var <- c(0.5, 1.0, 2.0)

data <- read.csv(here("data", "process", "newdata.csv")) %>%
	mutate(dose = factor(dose, levels = var))

title <- labs(x = "Dose (milligrams/day)",
	    y = "Tooth length")

Palette <- c(#"#000000", 
	  "#E69F00", 
	  "#56B4E9", 
	  "#009E73", 
	  #"#F0E442", 
	  #"#0072B2", 
	  "#D55E00", 
	  "#CC79A7")
gr_fill <- scale_fill_manual(breaks = var, 
		         values = Palette)

gr_col <- scale_color_manual(breaks = var, 
		         values = Palette)

height_mm = (240/3)*2

# -------------------------------
fig <- ggplot(data, aes(x = dose, y = len)) +
	geom_boxplot(aes(col = dose,
		       fill = dose,
		       alpha = 0.25),
		   outlier.color = "white",
		   outlier.fill = "white",
		   show.legend = FALSE) +
	geom_jitter(aes(col = dose), 
		  alpha = 0.75,
		  width = 0.125,
		  show.legend = FALSE) +
	gr_fill +
	gr_col +
	title +
	lehuynh_theme()

ggsave_elsevier("results/figures/boxplot.pdf",
	      fig,
	      width = "one_half_column",
	      height = height_mm)

ggsave_elsevier("results/figures/boxplot.tiff",
	      fig,
	      width = "one_half_column",
	      height = height_mm)

	