require(shiny)

function(input, output){
  # create output object
  # render functions require curly braces
  output$myTextOut <- renderText({
    
    paste("You entered the text:", input$TXT, 
          "\nYou entered the number:", input$myNumber,
          "\nYou select", input$mySelection)
    
  # takes the input id TXT   
    
  })
  
  output$myData <- renderDataTable({
    # curly bracket is required to tell r that there is more  than
    # one line.  The curly brackets allow multiple lines of code. 
    
    air <- airquality
    
    
  })
output$myHistogram <- renderPlot({
  
  normalData <- rnorm(1000, mean = input$myNumber)
  hist(normalData, col = input$mySelection)
})
  
  }