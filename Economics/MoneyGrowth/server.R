library(shiny)
shinyServer(function(input, output){
  
  output$plot <- renderPlot({
   L = seq(1, 20, length.out = 50) 
   T = seq(1, 50, length.out = 50)
   K = seq(1, 10, length.out = 50)
    for(i in 1:50){
      da <- L^input$tech*T^input$Lab*K^input$Kap
    }
    plot(da, type = 'l')
})
  
})