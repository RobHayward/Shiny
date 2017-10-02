shinyServer(function(input, output) {

  
dataInput <- reactive({
  # this comes from Aimee it will check before trying to build graph
  #validate(
  #  need(input$Country != "" & input$Series !="", "Please select a Country and 
  #       Series")
  #)
  # Need a way to select the correct columns so work on dplyr.R file
  filter(mdata, Country == input$Country, Variable == input$Series1)
                          
})
 
title <- reactive({paste(input$Series1, input$Country, 
                         sep = " ")

  })


 output$ts <- renderPlot({
 plot(dataInput()[,3:4], main = title(), type = 'l')
   })
})