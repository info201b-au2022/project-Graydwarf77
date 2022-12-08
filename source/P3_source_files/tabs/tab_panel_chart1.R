# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Chart 1",

  selectInput(inputId = "sel_Country",
              label = "Choose a Country",
              "Country names"),
  plotlyOutput("plot_1"),
)

