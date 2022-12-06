library(tidyverse)
library(shiny)
library(plotly)

all_suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
human_resources <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Human_Resources.csv")

# Pulling adolescent suicide rates from all suicide rates
adolescent_suicide_rate <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Both sexes"))

# Combining adolescent suicide rates and HR resources
combined_mental_health_df <- right_join(adolescent_suicide_rate, human_resources, by = "Country")

mental_health_countries <- combined_mental_health_df %>% 
  select(Country)

server <- function(input, output) {
    # TBD
}


