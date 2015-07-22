# load libraries, scripts and data
#These are in global.R

shinyServer(function(input, output){
    output$text1 <- renderText({
         paste("Country one is ", input$country1, 
               "Country two is ", input$country2, 
               "question is", input$question, sep = " ")
    })
    output$text2 <- renderText({
      paste("Country is", input$country2, sep = "")
    })
    output$plot <- renderPlot({
    par(mfrow = c(2,1))
    barplot(table(da[[input$question]][which(da$country == 
            input$country1)]))
    barplot(table(da[[input$question]][which(da$country == 
            input$country2)]))
    })
    
})
  
  