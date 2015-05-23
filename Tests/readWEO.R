require(tidyr)
require(dplyr)
da <- read.csv("Data/weoA.csv", stringsAsFactors = FALSE, 
  na.strings = "n/a") 
head(da)
names <- c("Country", "Subject", "Units", "Scale", "Notes", 1980:2019, "start")
colnames(da) <- names
str(da)
# remove unwanted data
da <- da[,-c(3, 4,5, 46)]
head(da, n = 2)
# Next line is old-style
# mdata <- melt(da, id = c("Country", "Subject"), measured = 1980:2019)
mdata <-   gather(da, Date, n, -Country, -Subject, convert = TRUE)
head(mdata)
colnames(mdata) <- c("Country", "Variable", "Year", "Value")
# want Year as number not factor.  Can't fix yet.
# mdata$Year <- as.(mdata$Year, format = "%Y") 
head(mdata)
tail(mdata)
str(mdata)
a = "Germany"
b = "Unemployment rate"
title <- paste(b, a, sep = " ")
plot(filter(mdata, Country == a, Variable == 
                          b)[,3:4], type = 'l', main = title)

