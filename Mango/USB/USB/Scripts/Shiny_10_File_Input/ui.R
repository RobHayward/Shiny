library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  titlePanel("Upload Example"),  # Add a title
  sidebarLayout(                 # Specify layout
    sidebarPanel(
      fileInput("file1", "Choose file to Upload:", 
                accept = c('text/csv', 'text/comma-separated-values', '.csv'))
    ),
    mainPanel(tableOutput("contents"))
  )
)

