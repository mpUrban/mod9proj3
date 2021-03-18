

library(shiny)
shinyUI(fluidPage(
    titlePanel("Air Quality by Month"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("month",
                        "Select Month:",
                        min=5,
                        max=9,
                        value=1),
            helpText('Documentation: change slider setting to select month')
        ),
        mainPanel(
            plotOutput("airPlot")
        )
    )
))
