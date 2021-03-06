library(shiny)

fluidPage(
  
  titlePanel("Submitting Inputs"),  # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      sliderInput("numberOfSims", label = "Select the number of simulated values:",
                   min = 1, max = 500, value = 100),
      
      selectInput("colour", label = "Select plot colour:", 
                  choices = c("red", "yellow", "green", "blue", "purple")),
      
      textInput("title", label = "Enter title:", value = "Histogram of data"),
      
      checkboxInput("meanLine", "Show median line")
      
      #submitButton("This is a submit button")
      
      ), #Add sidebar
    
    mainPanel( 
      
      plotOutput(outputId = "simHist")
      
      ) # Add the main panel
    
    ) # Close side layout
  
) # Close page