library(shiny)                             # Load the Shiny library

shinyServer(function(input, output) {      # Set up the Shiny Server
  
  output$simplePlot <- renderPlot({         # Return text to be rendered
    data <- switch(input$dist, "Normal" = rnorm(1000),
                   "Uniform" = runif(1000),
                   "Poisson" = rpois(1000, 5))
    hist(data, main = input$title, col = input$colour)              # .. based on the TXT input
  })
  
})
