require(shiny)
require(shinythemes)
fluidPage(theme = shinytheme("journal"), 
  
  titlePanel("Download"), # Add title
  
 fluidRow(
   
   tabsetPanel(
     
     tabPanel("Plot of data", plotOutput("histPlots")),
  tabPanel("Input file", fileInput("myFile", "Please choose a csv file:")),
  tabPanel("Text", ("This is text"))
     )
   
 )   
   
    
     # add sidebar
    
    
         
)
