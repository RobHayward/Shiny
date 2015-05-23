require(shiny)

shinyUI(fluidPage(
  
  titlePanel("My Second Ap"),
  
  sidebarLayout(
    
    sidebarPanel(textInput("textInput", "Enter text here:")
                 
                 ), 
    
    mainPanel(
      textOutput("dateOutput")
    )
    
    
  )))
  
