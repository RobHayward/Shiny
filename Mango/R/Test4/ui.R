require(shiny)
fluidPage(
  
  titlePanel("Exercise 5"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      fileInput("myFile", "Please choose a csv file:")  
      
      
      downloadButton 
      
    ), # add sidebar
    

    
    mainPanel(
      
      plotOutput("myPlot")
    ) # add main panel
    
  ) # Close side layout
  
  
) # Close Page