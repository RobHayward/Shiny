library(shiny)

function(input, output){

  simulateData <- reactive({
    
      rnorm(input$numberOfSims)
    
    })
  
  
  output$simHist <- renderPlot({
    
      normData <- simulateData()
    
      hist(normData, col = input$colour, main = input$title)
      
      if(input$meanLine) abline(v = median(normData))
    })

}