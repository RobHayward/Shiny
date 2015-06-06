library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page

  titlePanel("Upload Example"),  # Add a title

  sidebarLayout(                 # Specify layout

    sidebarPanel(
      selectInput("month", "Select Month(s):", choices = month.name[5:9], selected = "May", multiple = TRUE),
      downloadButton("data", label = "Download Data")
    ),

    mainPanel(plotOutput("ozonePlot"))
  
  )
)
