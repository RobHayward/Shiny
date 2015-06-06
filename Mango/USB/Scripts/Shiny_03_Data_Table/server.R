library(shiny) # Load the Shiny library

shinyServer(function(input, output) {
   
  myDf <- data.frame(X = 1:10, Y = 1:10, Z = LETTERS[1:10] )
  
  output$dfHead <- renderDataTable({ myDf }) 
  
})

