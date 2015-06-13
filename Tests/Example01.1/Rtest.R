da <- read.csv("Data/weob.csv")
# This does not work. I want to sub-set te data for the range that is 
# selected. 

start <- 1985
end <- 2019
  dates <- seq(start, end, 1)
  x    <- da[, c(1, 2)]  # Input data
  y    <- da[, c(1, 3)]
  x <- subset(x, x[1,] == dates)
  y <- subset(y, y[1,] == dates)
  par(mfrow = c(2,1))
  plot(x, col = 'darkgray',  
       main = "Evolution of Inflation", type = 'l')
  plot(y, col = 'darkgray',  
       main = "Evolution of Unemployment", type = 'l')
  # I am not sure why this works and the shiny app does not. 
  head(subset(x, x[1,] == dates))
  dates
  head(x)
  head(y)
  