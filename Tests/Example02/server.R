library(shiny)
da <- read.csv("../../Data/weob.csv")

# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$variable,
           "Inflation" = "Inflation",
           "Unemployment" = "Unemployment")
    })
  
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- da[,datasetInput()]
    summary(dataset)
  })
  
  # Show the first "n" observations
  output$view <- renderDataTable({
    da
    })
})