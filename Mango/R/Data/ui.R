require(shiny)
fluidPage(
  
  titlePanel("My app"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
    
    fileInput("myFile", "Please choose a csv file:"),  
    
        
    # need to specify that only the datapath is returned
      
    textInput("title", label = "Please give a title")
    
    ), # add sidebar
    
    mainPanel(
      
      plotOutput("myPlot")
    ) # add main panel
    
    
    
  ) # Close side layout
  

) # Close Page