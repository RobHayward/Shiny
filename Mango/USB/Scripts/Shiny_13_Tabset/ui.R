library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Defining a custom layout"),         # Add a title
  
  
  sidebarLayout(
    
    mainPanel(
    tabsetPanel(
      tabPanel("Plot", plotOutput("simplePlot")),
      tabPanel("Data", dataTableOutput("Data"))
      )),
  
  sidebarPanel(
    selectInput("Column", "Select distribution:", choices = names(airquality)),
    textInput("title", "Plot title:", "Histogram of Random Data"),
    selectInput("colour", "Select plot colour:", choices = c("red", "blue", "orange"))
                  )
  )
  
)



