shinyUI(fluidPage(
  titlePanel("Analysis of Unemployment and Inflation"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Country", "Choose a Country", 
                  choices = countrySelect, 
                  selected = "Germany"), 
      selectInput("Series", "Select Series", 
                  choices = c("Unemployment rate", 
                              "Inflation"), 
                  selected = "Unemployment rate")
    
      
    ),
    
    mainPanel(plotOutput("ts")
              
              )
    
  )
  # Mot sure why this does not work. 
  
))