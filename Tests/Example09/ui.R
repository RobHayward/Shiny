shinyUI(fluidPage(theme = "bootstrap.css",  
  titlePanel("Analysis of Unemployment and Inflation"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Country", "Choose a Country", 
                  choices = countrySelect, 
                  selected = "") 
      
    ),
    
    mainPanel(plotOutput("ts")
              
              )
    
  )
  # Mot sure why this does not work. 
  
))