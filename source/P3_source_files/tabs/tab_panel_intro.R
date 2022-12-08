# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    includeHTML("introductionPage.html"),
    includeCSS("styles.css")
)
