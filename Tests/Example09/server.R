library(tidyr)
shinyServer(function(input, output) {

  
dataInput <- reactive({
  # this comes from Aimee it will check before trying to build graph
  #validate(
  #  need(input$Country != "" & input$Series !="", "Please select a Country and 
  #       Series")
  #)
  # Need a way to select the correct columns so work on dplyr.R file
 filter(mdata, Country == input$Country) %>%     
  spread(Variable, Value)  


                          
})
 
title <- reactive({paste("Unimployment and Inflation for", input$Country, 
                         sep = " ")

  })

#eq <- reactive({
# eq <- lm(dap[,3] ~ dap[,4]) 
  
 #})
 output$ts <- renderPlot({
 plot(dataInput()[,4:3], main = title())
abline(lm(dataInput()[,3] ~ dataInput()[,4]), col = 'red')
note <- paste("Slope is", round(lm(dataInput()[,3] ~ 
                                     dataInput()[,4])$coefficient[2], 2),
              sep = " ")
usr <- par("usr")
text(usr[2], usr[4], labels = note, adj = c(1, 2)) 
})
})