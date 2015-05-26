da <- read.csv("../Data/dota.csv", 
               colClasses = c("Date", "character", "character", 
               NA, NA, NA, "factor", "factor", "factor",                                                   "factor", "factor", "factor", "factor", "factor", "factor", 
              "integer", "factor"))
names(da) <- c("date", "email", "country", "age", "id", "ip", 
               "type", "graphics", "hardware", "happy", 
               "how_much", "own", "hero", "AMD", "long", 
               "read", "best game") 
da$date <- as.POSIXct(da$date, format = "%Y-%m-%d %H:%M:%S")
#par(las = 2)
#par(mfrow = c(2,1))
shinyServer(
  output$summary <- renderPrint(reactive({
    switch(input$variable,
           "US" = "US",
           "MX" = "MX")
  })
 })
)
