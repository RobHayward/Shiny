require(shiny)

function(input, output){
  # create output object
  # render functions require curly braces
  output$myTextOut <- renderText({
    
    paste("You entered the text:", input$TXT, 
          "\n You entered the number:", input$myNumber)
    
  # takes the input id TXT   
    
  })
  
  
}