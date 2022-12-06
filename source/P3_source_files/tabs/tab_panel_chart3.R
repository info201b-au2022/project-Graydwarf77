# tab_panel_chart3

source("~/info201/project/project-Graydwarf77/source/P3_source_files/app_server.R")

library(shiny)

main_content_chart3 <- mainPanel(
  plotlyOutput("chart3")
)

sidebar_content_chart3 <- sidebarPanel(
  radioButtons(
    inputId = "chart3_xvar",
    label = "Please Select Which Type Of Mental Health Worker To View.",
    choices = list(
      "Psychiatrists",
      "Nurses",
      "Social Workers" = "Social_workers",
      "Psycologists"
    ),
    selected = "Nurses"
  ),
  selectInput(
    inputId = "chart3_country",
    label = "Please Select Which Countries To View",
    choices = mental_health_countries,
    multiple = TRUE
  )
)

tab_panel_chart3 <-tabPanel(
    "Chart 3",
    p("This is chart 3."),
    sidebarLayout(
      sidebar_content_chart3,
      main_content_chart3
    )
)