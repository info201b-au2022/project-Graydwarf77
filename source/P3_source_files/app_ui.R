

library(shiny)

source("~/info201/project/project-Graydwarf77/source/P3_source_files/tabs/tab_panel_intro.R")
source("~/info201/project/project-Graydwarf77/source/P3_source_files/tabs/tab_panel_chart1.R")
source("~/info201/project/project-Graydwarf77/source/P3_source_files/tabs/tab_panel_chart2.R")
source("~/info201/project/project-Graydwarf77/source/P3_source_files/tabs/tab_panel_chart3.R")
source("~/info201/project/project-Graydwarf77/source/P3_source_files/tabs/tab_panel_summary.R")
source("~/info201/project/project-Graydwarf77/source/P3_source_files/tabs/tab_panel_report.R")

ui <- navbarPage(
  title = "Project Example",
  position = "fixed-top",

  # A simple header
  header = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("... Project Header... "),
    hr()
  ),

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("... Project Footer ... "),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_chart1,
  tab_panel_chart2,
  tab_panel_chart3,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
