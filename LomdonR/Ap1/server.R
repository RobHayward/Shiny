require(shiny)

shinyServer(function(input, output){
  
 output$textOutput <- renderText(paste("Your note", input$textInput))
 
  
  
})