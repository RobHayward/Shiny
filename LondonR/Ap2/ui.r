require(shiny)

shinyUI(fluidPage(
  
  titlePanel("My Second Ap"),
  
  sidebarLayout(
    
    sidebarPanel(
      textInput("myTextInput", "Enter text here:"),
      numericInput("myNumberInput", "Select a number", value = 50, 
                   min = 0, max = 100, step = 1),
      selectInput("mySelectInput", "Select from the dropdown:", 
                  choices = LETTERS[1:10])
               ), 
    
    mainPanel(
      h4("Using HTML in Shiny"),
      p("This is a paragraph of text that is included in the main panel.", 
      strong("This text is in bold")), 
      ("You entered text"),
      textOutput("myTextOut"), 
      textOutput("myNumberOut"),
      textOutput("myChoiceOut")
    )
    
    
)  ))
  
