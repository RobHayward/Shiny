require(shiny)
fluidPage(
  
  titlePanel("My first shiny application"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      dateInput(inputId = "myDate", label = "date", format = "dd-mm-yyyy")
      
    ), # add sidebar
    
    
    
    mainPanel(
      
      verbatimTextOutput(outputId = "myTextOut")
      
    ) # add main panel
    
  ) # Close side layout
  
  
) # Close Page