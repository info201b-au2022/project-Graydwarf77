library("dplyr")
library("stringr")
library("tidyr")
library("knitr")

all_suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
human_resources <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Human_Resources.csv")

adolescent_suicide_rate <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Both sexes"))

aggregate_hr_by_country <- human_resources %>% 
  replace_na(list(Psychiatrists = 0, Nurses = 0, Social_workers = 0, Psychologists = 0)) %>% 
  mutate(aggregate_human_resources = Psychiatrists + Nurses + Social_workers + Psychologists) %>% 
  select(Country, aggregate_human_resources)

combined_mental_health_df <- left_join(adolescent_suicide_rate, aggregate_hr_by_country, by = "Country") %>% 
  rename(suicide_per_100K_10to19 = X10to19) %>% 
  arrange(-suicide_per_100K_10to19) %>% 
  group_by(suicide_per_100K_10to19)

summary_table <- kable(combined_mental_health_df, format = "pipe", digits = 1)

print(summary_table)
