library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # First read the data from WEO
da <- read.csv("../../Data/weob.csv")
  # This does not work. I want to sub-set te data for the range that is 
  # selected. 
  
  output$tsPlot <- renderPlot({
   dates <- input$start:input$end
    x    <- da[, c(1, 2)]  # Input data
    y    <- da[, c(1, 3)]
    x <- subset(x, x[1,] == dates)
    y <- subset(y, y[1,] == dates)
par(mfrow = c(2,1))
    plot(x, col = 'darkgray',  
         main = "Evolution of Inflation", type = 'l')
plot(y, col = 'darkgray',  
     main = "Evolution of Unemployment", type = 'l')
  })
  
})
  