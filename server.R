


library(shiny)

shinyServer(function(input, output) {
    output$airPlot <- renderPlot({
        monthIdx <- input$month
        monthName <- month.name[input$month]
        plotDF <- airquality[airquality$Month == monthIdx, ]
        x <- plotDF[, 6]
        y <- plotDF[, 1]
        plot(
            main = paste('Daily Ozone for ', monthName),
            x,
            y,
            col = "#0000ff20",
            pch = 16,
            cex = 4,
            xlab = "Day",
            ylab = "Ozone",
            cex.lab = 1.5
        )
        points(x,
               y,
               col = 1,
               pch = 1,
               cex = input$size)
    }, height = 400, width = 400)
})
