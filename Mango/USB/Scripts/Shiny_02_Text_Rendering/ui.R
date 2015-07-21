library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("My Hello World Shiny Example!"),   # Add a title

  sidebarLayout(                                 # Specify layout

    sidebarPanel(                                # Specify side bar
      textInput("TXT", "Hello Text", value = "World")      # Text input
    ),

    mainPanel(      
      
      h4("renderText > verbatimTextOutput"),
      verbatimTextOutput("text1"),                # Output text

      h4("renderText > textOutput"),
      textOutput("text2"),                # Output text
      
      h4("renderPrint > verbatimTextOutput"),
      verbatimTextOutput("text3"),                # Output text

      h4("renderPrint > textOutput"),
      textOutput("text4")                # Output text
      
      
    )
  )
)
