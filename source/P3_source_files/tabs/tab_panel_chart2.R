# tab_panel_chart2

library(shiny)

tab_panel_chart2 <-tabPanel(
  # Application title
  titlePanel("Analyzing Suicide Rate for Ages 15-24"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      radioButtons("gender", label = "Select Gender:",
                   choices = c("male", "female"), 
                   selected = "male"),
      selectInput("changeYear", label = "Select a Year:", 
                  choices = list("1985", "1990", "1995", "2000", "2005", "2010", "2015"), 
                  selected = "2015"),
      selectInput("selectCountry", label = "Select a Country: ",
                  choices = unique_countries
      )
    ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
      plotlyOutput("plot")
    )
  )
)

