library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Image Rendering Example"),   # Add a title

  sidebarLayout(                                 # Specify layout

    sidebarPanel(
      sliderInput("n", "Number of Values", 1, 100, 25, step = 1)  
    ),

    mainPanel(imageOutput("thePlot"), imageOutput("mangoLogo"))
  )
)
