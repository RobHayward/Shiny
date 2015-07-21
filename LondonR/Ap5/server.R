require(shiny)

shinyServer(function(input, output){
  
 output$table <- renderDataTable(switch(input$table, 
            "airquality" = airquality, 
            "iris" = iris, 
            "mtcars" = mtcars)
 )
})