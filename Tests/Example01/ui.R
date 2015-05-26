library(shiny)

shinyUI(fluidPage(
  titlePanel("Visualising the data"), 
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins", 
                  "Number of bins:", 
                  min = 5, 
                  max = 50, 
                  value = 30),
      ("Choose the number of bins to change the dispursion of the data.  
       This can give you an initial feel for the data ")
    ), 
    mainPanel(
      plotOutput("distPlot"), 
      ("This will give you an overview of the way that the data is disbursed.")
    )
  )
)



)