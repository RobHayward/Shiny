library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Data Frame Example"),   # Add a title

  sidebarLayout(                                 # Specify layout

    sidebarPanel(),

    mainPanel(      

      h4("Data Frame"),
      dataTableOutput("dfHead")
      
    )
  )
)
