require(shiny)

shinyUI(fluidPage(
  
  titlePanel("Render Plot"),
  
  sidebarLayout(
    
    sidebarPanel(
      numericInput("numberInput", "Chose number", max = 1000, min = 100, value = 100), 
      selectInput("colInput", "Chose colour", choice  = c("red","blue", "green"),
      textInput("title", "Enter text for title")
      ,
    mainPanel(
      plotOutput("myPlot")
    )
    
    
  )
  
) )))