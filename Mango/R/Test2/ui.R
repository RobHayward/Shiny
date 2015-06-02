require(shiny)
fluidPage(
  
  titlePanel("Exercise 2"), # Add title
  
  sidebarLayout(
    
    sidebarPanel( # add sidebar
    
    dateRangeInput("dateRange", "Select start and end dates"),
    
    radioButtons("myDistribution", label = "Select Distribution", 
                 choices = c("Normal", "Poisson", "Uniform"))
    ), 
    
    mainPanel( # add main panel
   
    plotOutput(outputId = "datePlot") 
   # Close side layout
  
  
))) # Close Page