require(shiny)
require(ggplot2)

function(input, output){
  
readData <- reactive({
  inputFile <- input$myFile
  if(is.null(inputFile))
  return(NULL)
  read.csv(inputFile$datapath)
  
})  
  output$histPlots <- renderPlot({
    selectedData <- readData()
    print(qplot(selectedData[,2], geom = "histogram"))
    
  })
  
}