# tab_panel_chart2

library(shiny)

source("../app_server.R")


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
    plotlyOutput("chart2_plot")
  )


tab_panel_chart2 <-tabPanel(
  # Application title
  # titlePanel("Analyzing Suicide Rate for Ages 15-24"),
  sidebarLayout(
    chart2_sidebar,
    chart2_mainbar
    
  )
  
  # Sidebar with a slider input for number of bins 
  
)

