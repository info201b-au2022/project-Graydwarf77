# tab_panel_chart3

source("app_server.R")

library(shiny)

main_content_chart3 <- mainPanel(
  plotlyOutput("chart3"),
  p("This chart depicts a scatterplot, with a specific kind of mental health professional on the x-axis, and the adolescent suicide rate on the y-axis.
    both of these values are per 100,000 people. Some trends we noticed in the graph are that it seems that mental health resources do not necessarily 
    lower suicide rates around the world. Countries that have a lower rates of psychiatrists and psychologists such as Mexico, Kenya, or Cambodia 
    actually have roughly comparable adolescent suicide rates than some countries which have high rates of psychiatrists and psychologists such as 
    Sweden or Poland. Although, there are some countries that have a high number of mental health professionals, such as Israel, which also have very 
    low adolescent suicide rates. ")
)

sidebar_content_chart3 <- sidebarPanel(
  radioButtons(
    inputId = "chart3_xvar",
    label = "Please Select Which Type Of Mental Health Worker To View.",
    choices = list(
      "Psychiatrists",
      "Nurses",
      "Social Workers" = "Social_workers",
      "Psychologists"
    ),
    selected = "Psychiatrists"
  ),
  selectInput(
    inputId = "chart3_country",
    label = "Please Select Which Countries To View",
    choices = mental_health_countries,
    multiple = TRUE,
    selected = "United States of America"
  )
)

tab_panel_chart3 <-tabPanel(
    "Chart 3",
    h1("Chart Three: Comparing Mental Health Resources to Adolescent Suicide Rates by Country"),
    sidebarLayout(
      sidebar_content_chart3,
      main_content_chart3
    )
)
