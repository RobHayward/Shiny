require(shiny)

shinyServer(function(input, output){
  
 output$myPlot <- renderPlot(hist(rnorm(input$numberInput), col = input$colInput,
                                  main = input$title))  
) 
})