shinyServer(function(input, output) {

  
dataInput <- reactive({
  filter(mdata, Country == input$Country, Variable == 
                          input$Series)[,3:4]
})
 
title <- reactive({paste(input$Series, input$Country, sep = " ")

  })


 output$ts <- renderPlot({
 plot(dataInput(), type = 'l', main = title())
   })
})