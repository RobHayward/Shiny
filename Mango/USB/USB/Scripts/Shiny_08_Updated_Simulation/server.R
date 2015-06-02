library(shiny)

function(input, output) {
  
  getData <- reactive({ 
    rnorm(input$numberInput)
  })
  
  output$plotOutput <- renderPlot({
    histData <- getData()
    hist(histData, col = input$colInput)
  })
    
}

