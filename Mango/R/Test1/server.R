require(shiny)

function(input, output){
  # create output object
  # render functions require curly braces
  
  output$myHistogram <- renderPlot({
  title = paste("Histograme of", input$TXT)
  normalData <- rnorm(input$myNumber)
  med <- median(normalData)
  hist(normalData, col = input$mySelection, main = title)
  if(input$select) abline(v = med, col= "blue")
  
})
  
  }