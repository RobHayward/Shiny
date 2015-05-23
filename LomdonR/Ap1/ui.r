require(shiny)

shinyUI(fluidPage(
  
  titlePanel("My First App"),
 
  sidebarLayout(
    
 sidebarPanel(
   textInput("textInput", "Enter text here:")
   ), 
 
 mainPanel(
   textOutput("myTextOut")
 )
  )
))