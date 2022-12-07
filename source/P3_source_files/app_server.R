library(tidyverse)
library(shiny)
library(plotly)

all_suicide_rates <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Crude_suicide_rates.csv")
human_resources <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/Human_Resources.csv")
chart2_dataset <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Graydwarf77/main/data/master.csv")

# Pulling adolescent suicide rates from all suicide rates
adolescent_suicide_rate <- all_suicide_rates %>% 
  select(Country, Sex, X10to19) %>% 
  filter(str_detect(Sex, "Both sexes"))

# Combining adolescent suicide rates and HR resources
combined_mental_health_df <- right_join(adolescent_suicide_rate, human_resources, by = "Country")

mental_health_countries <- combined_mental_health_df %>% 
  select(Country)

# Chart 2 Wrangling
country_year_filter_plot2 <- function(year_input, country_input, gender_input) {
  plot2_df <- chart2_dataset %>%
    filter(year == year_input) %>%
    filter(country == "United States" | country == country_input) %>%
    filter(sex == gender_input) %>%
    filter(age == "15-24 years") }

unique_countries <- chart2_dataset %>%
  distinct(country)

# Chart 3 Wrangling
variable_country_filter_plot3 <- function(var_input) {
  plot3_df <- combined_mental_health_df %>% 
    select(Country, X10to19, all_of(var_input))
}

test <- variable_country_filter_plot3("Nurses")

server <- function(input, output) {
  output$chart2_plot <- renderPlotly({
    plot2_title <- paste0("Suicide Rates Comparing the U.S. and ", input$selectCountry, " for (Ages 15-24, per 100,000)")
    ggplot(data = country_year_filter_plot2(input$changeYear, input$selectCountry, input$gender)) +
      geom_bar(aes(x = country, y = suicides.100k.pop, fill = country), stat = "identity") +
      ggtitle(plot2_title) +
      labs(x = "Countries",
           y= "Suicide Rate (Per 100,000)")
  })
  output$chart3 <- renderPlotly({
    ggplot(variable_country_filter_plot3(input$chart3_xvar, input$chart3_country)) +
      geom_point()
  })
}


