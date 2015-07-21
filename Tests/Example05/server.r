library(shiny)
require(tidyr)
require(dplyr)
da <- read.csv("../../Data/weoA.csv", stringsAsFactors = FALSE, 
               na.strings = "n/a") 
names <- c("Country", "Variable", "Units", "Scale", "Notes", 1980:2019, "start")
colnames(da) <- names
da <- da[,-c(3, 4,5, 46)]
head(da, n = 2)
mdata <-   gather(da, Year, Value, -Country, -Variable, convert = TRUE)
colnames(mdata) <- c("Country", "Variable", "Year", "Value")

shinyServer(function(input, output) {
  
output$table <- renderTable({
   filter(mdata, Country == input$country) %>%  
   select(Variable == input$variable)
})  




})

#  output$myplot <- renderPlot({
#    a <- input$country 
#    b = input$variable
#    title <- paste(b, a, sep = " ")
#    plot(filter(mdata, Country == a, Variable == 
#                  b)[,3:4], type = 'l', main = title)
#    
#  }) 

