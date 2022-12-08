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
variable_country_filter_plot3 <- function(country_input_chart3, chart3_Var) {
  selected_countries_df <- combined_mental_health_df %>% 
    filter(Country %in% country_input_chart3) %>% 
    select(Country, X10to19, all_of(chart3_Var))
  return(selected_countries_df)
}

server <- function(input, output, session) {
  output$chart2_plot <- renderPlotly({
    plot2_title <- paste0("Suicide Rates Comparing the U.S. and ", input$selectCountry, " for (Ages 15-24, per 100,000)")
    ggplot(data = country_year_filter_plot2(input$changeYear, input$selectCountry, input$gender)) +
      geom_bar(aes(x = country, y = suicides.100k.pop, fill = country), stat = "identity") +
      ggtitle(plot2_title) +
      labs(x = "Countries",
           y= "Suicide Rate (Per 100,000)")
  })
  output$chart3 <- renderPlotly({
    ggplot(variable_country_filter_plot3(input$chart3_country, input$chart3_xvar)) +
      geom_point(aes_string(x = input$chart3_xvar, y = "X10to19", label = "Country")) +
      labs(x = paste0(input$chart3_xvar, " Per 100,000 People"), 
           y = "Suicide Rates for Ages 10 to 19 per 100,000 People",
           title = "Analysis of Suicide Rates in Adolescents compared to Mental Health Resources") 
  })
  # Chart 1 Code
  # Group the sexes and find the mean of their respective suicide rates
  
  data <- reactive({
    req(input$sel_Country)
    suiciderates_by_sex <- all_suicide_rates %>%
      filter(Country %in% input$sel_Country) %>%
      group_by(Sex) %>%
      summarize(Suicide_rates_adolescents = mean(X10to19))
  })
  # Update country inputs based on countries from the dataset
  observe({
    updateSelectInput(session,
                      "sel_Country",
                      choices = all_suicide_rates$Country)
  })
  # Plot the 'suicide_rates' data set, with sex on the x-axis and suicide rates per 100,000
  # 10 to 19-year-olds on the y-axis
  output$plot_1 <- renderPlotly({
    Chart_1 <- ggplot(data()) +
      geom_col(mapping = aes(x = Sex, y = Suicide_rates_adolescents, fill = Sex)) +
      ylab("Suicide Rates Per 100,000 Adolescents") +
      ggtitle("Comparing Suicide Rates Among Male and Female Adolescents")
    Chart_1
  })
  
}
  



