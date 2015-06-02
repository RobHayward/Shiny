require(shiny)
fluidPage(
  
  titlePanel("Exercise 2"), # Add title
  
  sidebarLayout(
    
    sidebarPanel( # add sidebar
    
    dateRangeInput("dateRange", "Select start and end dates"),
    
    radioButtons("myDistribution", label = "Select Distribution", 
                 choices = c("Normal", "Poisson", "Uniform")),
    
    downloadButton("download", label = "Download simulated data")
    ), 
    
    mainPanel( # add main panel
   
    plotOutput(outputId = "datePlot") 
   # Close side layout
  
 # download data handler
 #downloadHandler(filename - "simultedData.csv", 
 # content = function(file){write.csv(simData)})
))) # Close Page