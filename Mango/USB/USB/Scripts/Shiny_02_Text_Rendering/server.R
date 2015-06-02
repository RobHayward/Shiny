library(shiny) # Load the Shiny library

shinyServer(function(input, output) {
  
  output$text1 <- output$text2 <- renderText({paste("Hello", input$TXT)})
  
  output$text3 <- output$text4 <- renderPrint({ t.test(rnorm(100)) })
  
})
