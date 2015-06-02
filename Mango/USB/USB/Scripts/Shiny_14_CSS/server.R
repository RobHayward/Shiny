library(shiny)                             # Load the Shiny library

shinyServer(function(input, output) {      # Set up the Shiny Server
  
  data <- reactive(
    airquality[, input$Column]
    )
  
  output$simplePlot <- renderPlot({         # Return text to be rendered
    airData <- data()
    hist(airData, main = input$title, col = input$colour)              # .. based on the TXT input
  })
  
  output$Data <- renderDataTable(head(airquality, 10))
  
})
