library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Plotting Example"),   # Add a title

  sidebarLayout(                                 # Specify layout

    sidebarPanel(
      textInput("title", "Title of plot", "London Tube Excess Data"),
      checkboxInput("byLine", "Create Plot by Line?", FALSE)
    ),

    mainPanel(plotOutput("thePlot"))
  )
)
