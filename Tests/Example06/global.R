library(shiny)
da <- read.csv("../../Data/dota.csv", 
               colClasses = c("Date", "character", "character", 
                              NA, NA, NA, "factor", "factor", "factor",                                                   "factor", "factor", "factor", "factor", "factor", "factor", 
                              "integer", "factor"))
names(da) <- c("date", "email", "country", "Age", "id", "ip", 
               "Most usual play mode", "Separate graphics card?", 
               "Hardware", "Happy with gaming experience", 
               "How much would you spend on a new graphics card?", 
               "Own graphics card", "Favourite Dota hero", 
               "AMD", "How long playing Dota 2?", 
               "read", "best game") 
da$date <- as.POSIXct(da$date, format = "%Y-%m-%d %H:%M:%S")

questions <- c("Age", "Most usual play mode", "Separate graphics card?", 
              "Hardware", "Happy with gaming experience", 
              "How much would you spend on a new graphics card?",  
               "Own graphics card", "Favourite Dota hero", 
               "How long playing Dota 2?")
countries <- unique(da$country)


#realquestions >- data.frame(c(realques))