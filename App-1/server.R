da <- read.csv("Data/dota.csv", 
               colClasses = c("Date", "character", "character", 
               NA, NA, NA, "factor", "factor", "factor",                                                   "factor", "factor", "factor", "factor", "factor", "factor", 
              "integer", "factor"))
names(da) <- c("date", "email", "country", "age", "id", "ip", 
               "type", "graphics", "hardware", "happy", 
               "how_much", "own", "hero", "AMD", "long", 
               "read", "best game") 
da$date <- as.POSIXct(da$date, format = "%Y-%m-%d %H:%M:%S")
countries <- unique(da$country)

shinyServer(
  function(input, output){
  
  
  output$plot1 <- renderPlot({
  
    question <- switch(input$country, 
                   "US" = US,
                   "MX" = MX)
  
    legend <- switch(input$country, 
                     "US" = US,
                      "MX" = MX)

    barplot(height = question, 
            main = legend)
  
  })
  })