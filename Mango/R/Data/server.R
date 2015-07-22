require(shiny)


auctionData <- read.csv("auction2013.csv")
function(input, output){
  
  
  output$myPlot <- renderPlot({
   
    auctionData <- readData()
     
    plot(auctionData$Day, auctionData$Final, type = 'l', 
         main = input$title)
    
  })
  
}