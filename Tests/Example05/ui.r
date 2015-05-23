library(shiny)
shinyUI(fluidPage(
  titlePanel("French Variables"),
  
  sidebarPanel(
         selectInput("variable", label = h3("Select Variable"), 
                     choices = list("Inflation" = "Inflation",
                                    "Unemployment" = "Unemployment")
                     
                     ),
         
         selectInput("country", label = h3("Select Country"), 
                     choices = list("France" = "France", 
                                    "Germany" = "Germany"))
         ),
  
  mainPanel(
    tableOutput("table"),
    plotOutput("text1")
    ) 
  
))