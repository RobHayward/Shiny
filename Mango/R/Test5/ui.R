require(shiny)
fluidPage(
  
  titlePanel("Download"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      fileInput("myFile", "Please choose a csv file:") 
    ), # add sidebar
    
    
    mainPanel( # add main panel
  
    plotOutput("histPlots")  
  ) # Close side layout
  
  ) 
) # Close Page