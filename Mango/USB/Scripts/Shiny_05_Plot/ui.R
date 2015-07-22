library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Plotting Example"),   # Add a title

  sidebarLayout(                                 # Specify layout

    sidebarPanel(
      sliderInput("n", "Number of Values", 1, 100, 25, step = 1)  
    ),

    mainPanel(plotOutput("thePlot"))
  )
)
