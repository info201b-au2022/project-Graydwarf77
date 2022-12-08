# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    p("This is the introduction."),
    includeHTML("introductionPage.html"),
    includeCSS("styles.css")
)
