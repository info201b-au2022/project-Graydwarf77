install.packages("ggplot2")
library("ggplot2")
library("dplyr")
library("stringr")
library("tidyr")

all_suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
human_resources <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Human_Resources.csv")

adolescent_suicide_rate <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Both sexes"))

aggregate_hr_by_country <- human_resources %>% 
  replace_na(list(Psychiatrists = 0, Nurses = 0, Social_workers = 0, Psychologists = 0)) %>% 
  mutate(aggregate_human_resources = Psychiatrists + Nurses + Social_workers + Psychologists) %>% 
  select(Country, aggregate_human_resources)

combined_mental_health_df <- left_join(adolescent_suicide_rate, aggregate_hr_by_country, by = "Country")

us <- combined_mental_health_df %>%
  filter(str_detect(Country, "United States"))

rwanda <- combined_mental_health_df %>%
  filter(str_detect(Country, "Rwanda"))

brazil <- combined_mental_health_df %>%
  filter(str_detect(Country, "Brazil"))

egypt <- combined_mental_health_df %>%
  filter(str_detect(Country, "Egypt"))

india <- combined_mental_health_df %>%
  filter(str_detect(Country, "India"))

malaysia <- combined_mental_health_df %>%
  filter(str_detect(Country, "Malaysia"))

mexico <- combined_mental_health_df %>%
  filter(str_detect(Country, "Mexico"))

romania <- combined_mental_health_df %>%
  filter(str_detect(Country, "Romania"))

japan <- combined_mental_health_df %>%
  filter(str_detect(Country, "Japan"))

countries_being_observed <- rbind(us, rwanda, brazil, egypt, india, malaysia, mexico, romania, japan)
  
  
ggplot(countries_being_observed, aes(x = aggregate_human_resources, y = X10to19, label = Country)) + 
  geom_point() +
  geom_text(hjust=.5, vjust=1.5) +
  xlim(0, 120) +
  ylim(0, 12) +
  ggtitle("Adolescent Suicide Rates per 100,000 Vs. Total Mental Health Workers per 100,000") +
  xlab("Number of Mental Health Workers per 100,000 People") +
  ylab("Suicide Rates for Adolescents Aged 10 to 19 per 100,000 People")
