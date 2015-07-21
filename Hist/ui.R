library(shiny)

shinyUI(fluidPage(
  titlePanel("Histogram of the data"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("select", label = h3("Variable:"), 
                  choice = list("Unemployment","Inflation"), 
                  selected = "Inflation")
    ), 
    mainPanel(
      plotOutput("distPlot")
    )
  )
)



)