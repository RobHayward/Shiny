require(shiny)

shinyServer(function(input, output){
  
 output$hist <- renderPlot(
   hist(mtcars[,input$input], 
        main = paste("Histogram of", input$input), 
        xlab = input$input)
 )
 
})