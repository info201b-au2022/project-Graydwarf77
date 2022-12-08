# tab_panel_chart2

library(shiny)

source("app_server.R")


  chart2_sidebar <- sidebarPanel(
    radioButtons("gender", label = "Select Gender:",
                 choices = c("male", "female"), 
                 selected = "male"),
    selectInput("changeYear", label = "Select a Year:", 
                choices = list("1985", "1990", "1995", "2000", "2005", "2010", "2015"), 
                selected = "2015"),
    selectInput("selectCountry", label = "Select a Country: ",
                choices = unique_countries
    )
  )
  
  
  # Show a plot of the generated distribution
 chart2_mainbar <- mainPanel(
    plotlyOutput("chart2_plot"),
    p("Bar graph depicting the comparison in suicide rate for the United States in comparison to other countries.
      The graph can be customized to display a certain gender and a selection of different years.
      Additionally, various countries can be selected to compare to the United States. Revealed through the graph,
      the United States has a high suicide rate for both males and females in comparison to the various other countries.")
  )


tab_panel_chart2 <-tabPanel(
  "Chart 2",
  h1("Chart 2: How the United States Compares to Other Countries in Adolescent Suicide Rates"),
  sidebarLayout(
    chart2_sidebar,
    chart2_mainbar
    
  )
  
  # Sidebar with a slider input for number of bins 
  
)

