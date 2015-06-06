library(shiny)

shinyUI(fluidPage(
  titlePanel("Visualising the data"), 
  
  sidebarLayout(
    sidebarPanel(
        selectInput("start", 
                  "Select start date", 
                  choices = seq(1980, 2019, 1), 
                  selected = 1980),
      selectInput("end", 
                  "Select start date", 
                    choices = seq(1980, 2019, 1), 
                  selected = 2019),
      ("Choose the the dates for time series.")
      
    ), 
    mainPanel(
      plotOutput("distPlot"), 
      ("This will give you an overview of the way that the inflation and 
       unemployment data evolve over time.")
    )
  )
)



)