require(tidyr)
require(shiny)
require(dplyr)
require(shinythemes)
da <- read.csv("Tests/Example08//weoA.csv", stringsAsFactors = FALSE, 
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
# select country and spread the vraiables to a data.frame with u and I
dap <- filter(mdata, Country == "Austria")  %>%   
  spread(Variable, Value)  
eq <- lm(dap[,3] ~ dap[,4])
plot(dap[,4:3])  
abline(eq, col = 'red')
note <- paste("Slope is", round(eq$coefficient[2], 2), sep = " ")
# This usr are the parameters of the graph
# see http://sphaerula.com/legacy/R/placingTextInPlots.html
usr <- par("usr")
text(usr[2], usr[4], labels = note, adj = c(1, 2))


 