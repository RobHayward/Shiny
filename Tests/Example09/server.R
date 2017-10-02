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
eq <- reactive({lm(dataInput()[,3] ~ dataInput()[,4])
  # I think that I can now use eq1 in all the cases below where I run the 
  # regression
  })
  

#eq <- reactive({
# eq <- lm(dap[,3] ~ dap[,4]) 
  
 #})
 output$ts <- renderPlot({
    plot(dataInput()[,4:3], main = title())
    eq1 <- lm(dataInput()[,3] ~ dataInput()[,4])
    abline(eq1, col = 'red')
    note <- paste("Slope is", round(eq1$coefficient[2], 2), sep = " ")
    usr <- par("usr")
    text(usr[2], usr[4], labels = note, adj = c(1, 2))
   })

  output$text1 <- renderText({
     eq1 <- lm(dataInput()[,3] ~ dataInput()[,4])
     rs <- round(summary(eq1)$r.squared, 2) 
     paste("The R-squared is ", rs, ".", sep = "")
   }) 
 
  output$text2 <- renderText({
   eq1 <- lm(dataInput()[,3] ~ dataInput()[,4])
   beta <- round(eq1$coefficient[2], 2)
   paste("The beta value is ", beta, ".", sep = "")
   })
 
  output$text3 <- renderText({
   eq1 <- lm(dataInput()[,3] ~ dataInput()[,4])
   ci1 <- round(confint(eq1)[2], 2)
   ci2 <- round(confint(eq1)[4], 2) 
   paste("The confidence intervals for the beta values are ", 
         ci1, " and ", ci2,".", sep = "")
   })
 output$resid <- renderPlot({
   eq1 <- lm(dataInput()[,3] ~ dataInput()[,4])
   plot(eq1$residuals, main = "Residual Plot", type = 'l', ylab = 
         "Residuals")
   # to do:  add the dates
   })
})