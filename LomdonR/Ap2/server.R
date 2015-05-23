require(shiny)

shinyServer(function(input, output){
  
 output$myTextOut <- renderText(input$myText), 
 output$myNumberOut <- renderText(input$myNumber),
 output$myChoiceOut <- renderText(input$myChoice)  
  
})