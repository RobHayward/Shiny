shinyUI(fluidPage(theme = "bootstrap.css",  
  titlePanel("Analysis of Unemployment and Inflation"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Country", "Choose a Country", 
                  choices = countrySelect, 
                  selected = ""), 
      selectInput("Series", "Select Series", 
                  choices = variableSelect, 
                  selected = "")
    
      
    ),
    
    mainPanel(plotOutput("ts")
              
              )
    
  )
))