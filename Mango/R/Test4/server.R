library(shiny)
library(ggplot2)

function(input, output){
  readData <= reactive({
    
    inputFile <- input$myFile
    
    if(is.null(inputFile))
      return(NULL)
   
    read.csv(inputFile$datapath)
    
    
    read.csv(inputFile$datapath, input$data))
    
  })
  
  output$histPlots <- renderPlot({
    
  print(myPlot())
  
  })

    
  qplot(selectedData[,2], geom = "histogram")
  
  
  
}


