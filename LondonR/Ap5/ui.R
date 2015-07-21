require(shiny)

shinyUI(fluidPage(
  
  titlePanel("Render Data"),
  
  sidebarLayout(
    
    sidebarPanel(
        selectInput(inputId = "table", label = "Choose data frame", 
                    choices = c("iris", "airquality", "mtcars"))
      #  selectInput(inputId = "num", label = "Select number of rows", 
       #             choices = c(5, 10, 20))
        
      ),
    
      
    mainPanel(
      h4("Data table"),
      dataTableOutput(outputId = "table")
    )
    
    
    
  )
))