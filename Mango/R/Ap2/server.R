require(shiny)

function(input, output){
  # create output object
  # render functions require curly braces
  output$myTextOut <- renderText({
    
    paste("You entered the text:", input$TXT)
    
  # takes the input id TXT   
    
  })
  
  
}