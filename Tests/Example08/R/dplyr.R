# Thsi is work on the selection of the two series for the scattergram. 
require(tidyr)
require(shiny)
require(dplyr)
require(shinythemes)
#cannot find the file.  Why?????
da <- read.csv("../weoA.csv", stringsAsFactors = FALSE, 
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
# variables names for the selection choice
countrySelect <- mdata$Country
variableSelect <- mdata$Variable 
da1 <- select(mdata, mdata$variable == "inflation, average consumer prices")
head(da)
