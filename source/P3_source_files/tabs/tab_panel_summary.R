# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary",
    h1("Summary Takeaways"),
    h4("1. Adolescent males have a higher suicide rate than adolescent females."),
    p("Our first research question addressed how suicide rates compared for males versus females.
      Revealed through our first chart, which analyzes the suicide rate for female, male, and
      both sexes, the suicide rate for male adolescents is much greater than female adolescents.
      Through analysis of the data, we have concluded this trend of higher male adolescent suicide rate
      is prevelant in most of the analyzed countries, with few large countries having a higher female
      adolescent suicide rate."),
    h4("2. United States adolescent suicide rates are not significantly higher nor lower than other countries."),
    p("Our second research question was aimed towards drawing a comparison between the adolescent suicide rate
      for the United States and other countries around the world. As shown in chart 2, the United States has a 
      relatively medium suicide rate for adolescents when compared to various other countries. From the chart,
      we can see that many countries have a higher adolescent suicide rate than the United States, while other 
      countries have a lower rate. Understanding this data, conclusions can be made that more treatment regarding
      mental health is necessary within the United States. Furthermore, while also considering the adolescent suicide
      rate data for other countries, it is evident that more actions should be taken around the world
      to combat the adolescent suicides occuring worldwide."),
    h4("3. Mental health resources have a minor influence on suicide rates around the world."),
    p("The final research question regards the comparison between amount of mental health human resources and suicide
      rate. Visible from the third chart, the rate of human resources has little affect to the number of suicides. In
      specific, the United States has a high amount of available resources for mental health, however, 
      the United States still has a proportionally high adolescent suicide rate. From this data, we can conclude that
      different methods for providing resources for mental health may be necessary for a more significant change in
      the amount of adolescent suicides that are occuring worldwide.")
    
)

