require(shiny)
fluidPage(
  
  titlePanel("My add", windowTitle = "My awsome Shiny app"), # Add title

  fluidRow(
    plotOutput("simHist")
    
  ), # end of first row
  
  fluidRow(
    
  column(6, 
         sliderInput("number", "Pick a number", 
                     min = 1, max = 500, value = 100)       
         ),
  #must add to 12
  column(6, 
         textInput("TXT", "Enter text")
         )
    
  )
  
        
    ) # add main panel
    

  
 # Close Page