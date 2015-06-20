require(tidyr)
require(shiny)
require(dplyr)
require(shinythemes)
da <- read.csv("weoA.csv", stringsAsFactors = FALSE, 
  na.strings = "n/a") 
names <- c("Country", "Subject", "Units", "Scale", "Notes", 1980:2019, "start")
colnames(da) <- names
# remove unwanted data
da <- da[,-c(3, 4,5, 46)]
# Next line is old-style
# mdata <- melt(da, id = c("Country", "Subject"), measured = 1980:2019)
mdata <-   gather(da, Date, n, -Country, -Subject, convert = TRUE)
colnames(mdata) <- c("Country", "Variable", "Year", "Value")
# want Year as number not factor.  Can't fix yet.
# mdata$Year <- as.(mdata$Year, format = "%Y") 
countrySelect <- mdata$Country
variableSelect <- mdata$Variable 
  
  
