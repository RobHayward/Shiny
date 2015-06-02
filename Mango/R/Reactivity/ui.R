require(shiny)
fluidPage(
  
  titlePanel("Reactivity"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      textInput(inputId = "TXT", label = "Enter title here:", 
                value = "Histogram"),
      numericInput("myNumber", label = "Please select a number:", 
                   value = 5, min = 1, max = 500, step = 0.5),
      
      selectInput("mySelection", label = "Please choose an option", 
                  choices = c("red", "green", "yellow", "blue")), 
        
      checkboxInput("select", label = "Select for median", value = TRUE)
      
      
     # submitButton("This is a submit button")
     
     
    ), # add sidebar
    
    
    
    mainPanel(
      
      
      plotOutput("myHistogram")
    ) # add main panel
    
  ) # Close side layout
  
  
) # Close Page