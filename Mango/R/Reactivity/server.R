require(shiny)

function(input, output){
  # create output object
  # render functions require curly braces
  
  # reactive rather than render
  simulateData <- reactive({
    # move the simulation to the reactive section from the render
    rnorm(input$numberofSims)  
# Now the simulated data will   
    })
  
  
  output$myHistogram <- renderPlot({
  title = paste("Histograme of", input$TXT)
  normData <- simulateData()
  med <- median(normalData)
  hist(normData, col = input$mySelection, main = title)
  if(input$select) abline(v = med, col= "blue")
  
})
  
  }