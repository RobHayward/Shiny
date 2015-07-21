library(tidyr)
library(dplyr)
 
myData <- read.csv("Data/weoA.csv", stringsAsFactors = FALSE, 
               na.strings = "n/a") 
names <- c("Country", "Subject", "Units", "Scale", "Notes", 1980:2019, "start")
colnames(myData) <- names
# remove unwanted data
myData <- myData[,-c(3, 4, 5, 46)]
#myData1 <- separate(myData, Subject, into = c("Inflation", "Unemployment"))
myData2 <- gather(myData, Year, Units, 3:42, -Country, -Subject, 
                  convert = TRUE)
myData3 <- arrange(myData2, Country, Subject)              
head(myData3)
tail(myData3)
myData4 <- spread(myData3, Subject, Units)  
names(myData4) <- c("Country", "Year", "Inflation", "Unemployment")
head(myData4)
a <- filter(myData4, Country == "Australia") 
a[,"Inflation"]
a <- as.numeric(a[,"Inflation"])
boxplot(a)

