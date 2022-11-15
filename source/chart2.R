# setwd("~/Documents/info201/projectfiles")
library(ggplot2)
library(tidyverse)

dataset <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")

df1 <- dataset %>%
  filter(str_detect(Sex, "Both sexes")) %>%
  select(Country, X10to19) 
# View(df1)

us <- df1 %>%
  filter(str_detect(Country, "United States"))

rwanda <- df1 %>%
  filter(str_detect(Country, "Rwanda"))

brazil <- df1 %>%
  filter(str_detect(Country, "Brazil"))

egypt <- df1 %>%
  filter(str_detect(Country, "Egypt"))

india <- df1 %>%
  filter(str_detect(Country, "India"))

malaysia <- df1 %>%
  filter(str_detect(Country, "Malaysia"))

mexico <- df1 %>%
  filter(str_detect(Country, "Mexico"))

romania <- df1 %>%
  filter(str_detect(Country, "Romania"))

japan <- df1 %>%
  filter(str_detect(Country, "Japan"))

all_region <- rbind(us, rwanda, brazil, egypt, india, malaysia, mexico, romania, japan)
# View(all_region)

# Creating chart for the selected countries with y axis "X10to19" and fill = Country
chart_2 <- ggplot(all_region, aes(x="", y=X10to19, fill=Country)) +
  geom_bar(stat="identity", width=1, color = "black") +
  ggtitle("Suicide Rate Among Adolescents (per 100,000)") +
  geom_label(aes(label = X10to19), 
             show.legend = FALSE, 
             position = position_stack(vjust = 0.5)) +
  coord_polar("y", start=0) +
  theme_void() 
# chart_2


# Help from https://r-charts.com/part-whole/pie-chart-ggplot2/
# Help from https://r-graph-gallery.com/piechart-ggplot2.html


