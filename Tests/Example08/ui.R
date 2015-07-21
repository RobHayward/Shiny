shinyUI(fluidPage(theme = "bootstrap.css",  
  titlePanel("Analysis of Unemployment and Inflation"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Country", "Choose a Country", 
                  choices = countrySelect, 
                  selected = "Germany"), 
      selectInput("Series1", "Select Series", 
                  choices = variableSelect, 
                  selected = "Unemployment rate"),
    
      selectInput("Series2", "Select Series", 
                  choices = variableSelect, 
                  selected = "Inflation")
     
    ),
    
    mainPanel(plotOutput("ts")
              
              )
    
  )
  # Mot sure why this does not work. 
  
))