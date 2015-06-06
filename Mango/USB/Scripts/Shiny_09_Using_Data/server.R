
library(shiny) # Load the Shiny library
library(ggplot2)

# Load the Tube Dataset
tubeData <- read.csv("./Data/tubeData.csv")

shinyServer(function(input, output) {
  
  output$thePlot <- renderPlot({ 
    gg <- qplot(data = tubeData, x = Month, y = Excess, color = Line) + 
      theme_bw() + geom_line() + ggtitle(input$title)
    if (input$byLine) gg <- gg + facet_wrap( ~ Line)
    gg
  })

})

