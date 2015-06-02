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
  
  
}