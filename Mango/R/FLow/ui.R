require(shiny)
fluidPage(
  
  titlePanel("Download"), # Add title
  
 verticalLayout(   
   
    fileInput("myFile", "Please choose a csv file:"), 
     # add sidebar
    
    
       plotOutput("histPlots")  
)
) # Close Page