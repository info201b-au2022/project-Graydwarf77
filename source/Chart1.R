# Comparing suicide rates between male and female adolescents

# Load packages
library(tidyverse)
library(dplyr)
library("ggplot2")

# Load data
suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
View(csv)

# Group the sexes and find the mean of their respective suicide rates
#suiciderates_by_sex <- suicide_rates %>%
  #group_by(Sex) %>%
  #summarize(Suicide_rates_adolescents = mean(X10to19))

# Plot the 'suicide_rates' data set, with sex on the x-axis and suicide rates per 100,000 
# 10 to 19-year-olds on the y-axis
ggplot(data = suicide_rates) +
  geom_col(mapping = aes(x = Sex, y = X10to19, fill = Sex))
