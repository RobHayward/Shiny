
library(shiny)
shinyServer(function(input, output) {
  output$contents <- renderTable({
    inFile <- input$file1
    if (is.null(inFile)) return(NULL)  
    read.csv(inFile$datapath)
  })
})
