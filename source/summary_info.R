library("dplyr")
library("ggplot2")
library("stringr")
library("tidyr")

all_suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
View(all_suicide_rates)

human_resources <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Human_Resources.csv")
View(human_resources)

# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:
adolescent_suicide_rate <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Both sexes"))

summary_adolescent_info <- list()
summary_adolescent_info$num_country_suicide_rate <- nrow(adolescent_suicide_rate)
summary_adolescent_info$highest_rate_country <- adolescent_suicide_rate %>%
  filter(X10to19 == max(X10to19, na.rm = TRUE)) %>%
  pull(X10to19)

summary_adolescent_info$median_rate_country <- adolescent_suicide_rate %>%
  filter(X10to19 == median(X10to19, na.rm = TRUE)) %>%
  pull(X10to19)

summary_adolescent_info$mean_rate_country <- adolescent_suicide_rate %>%
  sum(X10to19) 
 
summary_adolescent_info$num_countries_human_resources <- n_distinct(human_resources$Country)

