# tab_panel_chart1

library(shiny)
library(plotly)

tab_panel_chart1 <-tabPanel(
  "Chart 1",
  h1("Chart One: Comparing Suicide Rates For Adolescent Males and Females by Country"),
  selectInput(inputId = "sel_Country",
              label = "Choose a Country",
              "Country names"),
  plotlyOutput("plot_1"),
  p("This chart shows the comparison between suicide rates among male and female adolescents,
    with the ability to compare these statistics between countries around the world. By looking 
    through the suicide rates throughout each country, one can see that a discrepancy between male 
    and female adolescents' suicide rates is more drastic in some countries than others. Analyzing 
    this chart can help to understand which groups are allocated fewer mental health resources than others.")
)

