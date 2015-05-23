library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # First read the data from WEO
da <- read.csv("../../Data/weob.csv")
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plots
  
  output$distPlot <- renderPlot({
    x    <- da[, 2]  # Input data
    y    <- da[, 3]
    bins1 <- seq(min(x), max(x), length.out = input$bins + 1)
    bins2 <- seq(min(y), max(y), length.out = input$bins + 1)
    # draw the histogram with the specified number of bins
par(mfrow = c(2,1))
    hist(x, breaks = bins1, col = 'darkgray', border = 'white', 
         main = "Distribution of Inflation")
hist(y, breaks = bins2, col = 'darkgray', border = 'white', 
     main = "Distribution of Unemployment")
  })
  
})
  