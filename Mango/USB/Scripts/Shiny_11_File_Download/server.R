
library(shiny)

shinyServer(function(input, output) {

  airData <- reactive({
    
    selectMonth <- which(month.name %in% input$month)
    
    subset(airquality, Month %in% selectMonth)
    
    })
  
  output$ozonePlot <- renderPlot({
    subData <- airData()
    
    plot(subData$Ozone, subData$Wind, main = paste(input$month, collapse = ","))
  })
  
  output$data <- downloadHandler(filename = "subsetAirquality.csv", 
                                 content = function(file) write.csv(airData(), file))

})
