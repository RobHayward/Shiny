library(shiny)
library(dplyr)
library(tidyr)
myData <- read.csv("../../Data/weoA.csv", stringsAsFactors = FALSE, 
               na.strings = "n/a") 
names <- c("Country", "Subject", "Units", "Scale", "Notes", 1980:2019, "start")
colnames(myData) <- names
# remove unwanted data
myData <- myData[,-c(3, 4, 5, 46)]
#myData1 <- separate(myData, Subject, into = c("Inflation", "Unemployment"))
myData2 <- gather(myData, Year, Units, 3:42, -Country, -Subject, 
                  convert = TRUE)
myData3 <- arrange(myData2, Country, Subject)              

shinyServer(function(input, output) {
  
  # Compute the forumla text in a reactive expression since it is
  # shared by the output$caption and output$mpgPlot functions
myPlot <- reactive({
  a <- filter(myData3, Country == input$country) 
  as.numeric(a[,input$Variable], na.omit())  
   
})  
  # Return the formula text for printing as a caption
  
  # Generate a plot of the requested variable against mpg and
  # only include outliers if requested
  output$myPlot <- renderPlot({
    boxplot(x = myPlot, outline = input$outliers)
  })
})
