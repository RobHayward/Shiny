require(shiny)

shinyServer(function(input, output){
  
 output$myTextOut <- renderText(input$myTextInput) 
 output$myNumberOut <- renderText(input$myNumberInput)
 output$myChoiceOut <- renderText(input$mySelectInput)  
  
})