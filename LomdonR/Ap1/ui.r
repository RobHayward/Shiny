require(shiny)

shinyUI(fluidPage(
  
  titlePanel("My First App"),
 
  sidebarLayout(
    
 sidebarPanel(
   textInput("myText", "Enter text here:")
   ), 
 
 mainPanel(
   textOutput("niceTextOutput")
 )
  )
))