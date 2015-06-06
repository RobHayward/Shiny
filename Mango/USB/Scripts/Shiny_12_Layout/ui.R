library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Defining a custom layout"),         # Add a title
  
  fluidRow(plotOutput("simplePlot")),
  
  fluidRow(column(3,
                  radioButtons("dist", "Select distribution:", choices = c("Normal", "Uniform", "Poisson"))
                  ),
           column(6,
                  textInput("title", "Plot title:", "Histogram of Random Data")
                  ),
           column(3,
                  selectInput("colour", "Select plot colour:", choices = c("red", "blue", "orange"))
                  ))
  
)



