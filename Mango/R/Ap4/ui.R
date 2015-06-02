require(shiny)
fluidPage(
  
  titlePanel("My first shiny application"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      textInput(inputId = "TXT", label = "Enter text here:", 
                value = "Hello!"),
      numericInput("myNumber", label = "Please select a number:", 
                   value = 5, min = 0, max = 10, step = 0.5),
      
      selectInput("mySelection", label = "Please choose an option", 
                  choices = c("A", "B", "C", "D")) 
        
      
      
    ), # add sidebar
    
    
    
    mainPanel(
      
      verbatimTextOutput(outputId = "myTextOut")
      
    ) # add main panel
    
  ) # Close side layout
  
  
) # Close Page