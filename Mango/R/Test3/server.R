require(shiny)

function(input, output){
  
  name <- reactive({paste(input$Select, ".csv")
  read.csv(file.path("../Data, input$data))
  })
# file.path will put the route with the file name
  output$myPlot <- renderPlot({

selectedDta <- read

# THe third exercise would be useful. 

  })
}


