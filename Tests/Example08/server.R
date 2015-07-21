shinyServer(function(input, output) {

  
dataInput <- reactive({
  filter(mdata, Country == input$Country, Variable == 
                          input$Series1, Variable ==
                          input$Series2)[,3:4]
                          
})
 
title <- reactive({paste(input$Series1, input$Series2, input$Country, 
                         sep = " ")

  })


 output$ts <- renderPlot({
 plot(dataInput()[,3:4], main = title())
   })
})