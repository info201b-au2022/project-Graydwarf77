library("dplyr")
library("stringr")
library("tidyr")
library("knitr")

all_suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
human_resources <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Human_Resources.csv")

adolescent_suicide_rate_both <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Both sexes"))
adolescent_suicide_rate_both_df <- adolescent_suicide_rate_both[, -2]
colnames(adolescent_suicide_rate_both_df)[colnames(adolescent_suicide_rate_both_df) == "X10to19"] = "Both Sexes Rate Per 100,000"

adolescent_suicide_rate_male <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Male"))
adolescent_suicide_rate_male_df <- adolescent_suicide_rate_male[, -2]
colnames(adolescent_suicide_rate_male_df)[colnames(adolescent_suicide_rate_male_df) == "X10to19"] = "Male Rate Per 100,000"

adolescent_suicide_rate_female <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Female"))
adolescent_suicide_rate_female_df <- adolescent_suicide_rate_female[, -2]
colnames(adolescent_suicide_rate_female_df)[colnames(adolescent_suicide_rate_female_df) == "X10to19"] = "Female Rate Per 100,000"

aggregate_hr_by_country <- human_resources %>% 
  replace_na(list(Psychiatrists = 0, Nurses = 0, Social_workers = 0, Psychologists = 0)) %>% 
  mutate(aggregate_human_resources = Psychiatrists + Nurses + Social_workers + Psychologists) %>% 
  select(Country, aggregate_human_resources)
colnames(aggregate_hr_by_country)[colnames(aggregate_hr_by_country) == "aggregate_human_resources"] = "Human Resources"

combined_mental_health_df <- left_join(adolescent_suicide_rate_both_df, aggregate_hr_by_country, by = "Country") 

combined_mental_health_df <- left_join(combined_mental_health_df, adolescent_suicide_rate_male_df, by = "Country")

combined_mental_health_df <- left_join(combined_mental_health_df, adolescent_suicide_rate_female_df, by = "Country") 
rename(suicide_per_100K_10to19 = X10to19) %>% 
  arrange(-suicide_per_100K_10to19) %>% 
  group_by(suicide_per_100K_10to19)


summary_table <- kable(combined_mental_health_df, format = "pipe", digits = 1)

print(summary_table)
