require(shiny)

function(input, output){
  # create output object
  # render functions require curly braces
  output$myTextOut <- renderText({
    
    format(input$myDate, "The day is %A, the month is %B, the year is %Y")
    
  # Can select the starting and ending dates.
    # Format function is easy. 
    # The  
    
  })
  
  
}