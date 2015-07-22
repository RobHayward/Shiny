library(shiny)                             # Load the Shiny library

shinyServer(function(input, output) {      # Set up the Shiny Server
  
  output$helloText <- renderText({         # Return text to be rendered
    paste("Hello", input$TXT)              # .. based on the TXT input
  })
  
})
