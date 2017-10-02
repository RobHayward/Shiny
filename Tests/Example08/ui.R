shinyUI(fluidPage(theme = "bootstrap.css",  
  titlePanel("Analysis of Unemployment and Inflation"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Country", "Choose a Country", 
                  choices = countrySelect, 
                  selected = ""), 
      selectInput("Series1", "Select Series", 
                  choices = variableSelect, 
                  selected = ""),
    
      selectInput("Series2", "Select Series", 
                  choices = variableSelect, 
                  selected = "")
     
    ),
    
    mainPanel(plotOutput("ts")
              
              )
    
  )
  # Mot sure why this does not work. 
  
))