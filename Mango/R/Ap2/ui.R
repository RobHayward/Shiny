require(shiny)
fluidPage(
  
  titlePanel("My first shiny application"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      textInput(inputId = "TXT", label = "Enter text here:", 
                value = "Hello!")
      
    ), # add sidebar
    
    
    
    mainPanel(
      
      verbatimTextOutput(outputId = "myTextOut")
      
    ) # add main panel
    
  ) # Close side layout
  
  
) # Close Page