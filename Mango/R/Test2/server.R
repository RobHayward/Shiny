require(shiny)

function(input, output){
  
  output$datePlot <- renderPlot({
    
    dates <- seq(input$dateRange[1], input$dateRange[2], 
                 by = "day")
    # create a sequence of dates
    
    nDates <- length(dates)
    
    simData <- switch(input$myDistribution, "Normal" = rnorm(nDates), 
                      "Uniform" = runif(nDates), Poisson = 
                        rpois(nDates, lambda = 5))
    
    plot(dates, simData, type = "l")
    
    # switch is very useful (pass in a text option and convert that)
  })
  
  
}