require(shiny)

shinyUI(fluidPage(
  
  titlePanel("Render Data"),
  
  sidebarLayout(
    
    sidebarPanel(
        selectInput("input", "Select column:", choices = 
        colnames(mtcars))
        
      ),
    
      
    mainPanel(
      h4("Histogram"),
      plotOutput("hist")
    )
    
    
    
  )
))