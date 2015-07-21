library(shiny)
shinyServer(function(input, output){
da <- read.csv("../Data/WEO.csv")
   datasetInput <- reactive({
     switch(input$select, 
            "Unemployment" = Unemployment, 
            "Inflation" = Inflation)
   })
  output$distPlot <- renderPlot({
    x <- datasetInput()
    hist(Inflation, breaks = 5, col = 'lightblue', border = 'white', 
         data = da)
     
  })
  
})
  