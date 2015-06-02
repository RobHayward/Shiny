require(shiny)
fluidPage(
  
  titlePanel("Exercise 3"), # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      selectInput("Select", label = "Select data", 
                  choices = list.files("../../USB/USB/Data/") 
                  # list all the files in that directry
                  selected = "auction2013")
      
      
    ), # add sidebar
    

    
    mainPanel(
      
      plotOutput("myPlot")
    ) # add main panel
    
  ) # Close side layout
  
  
) # Close Page