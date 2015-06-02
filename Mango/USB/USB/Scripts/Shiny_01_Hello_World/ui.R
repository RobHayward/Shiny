library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("My Hello World Shiny Example!"),         # Add a title
  
  sidebarLayout(                                       # Specify layout
    
    sidebarPanel(                                      # Specify side bar
      textInput("TXT", "Hello Text", value = "World")  # Text input
    ),
    
    mainPanel(                                         # Specify Main Panel
      verbatimTextOutput("helloText")                  # Output text
    )
  )
)



