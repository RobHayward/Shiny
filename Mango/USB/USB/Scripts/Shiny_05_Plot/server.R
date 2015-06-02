library(shiny) # Load the Shiny library

shinyServer(function(input, output) {

  output$thePlot <- renderPlot({ 
    hist(rnorm(input$n), col = "orange") 
  })
  
})

