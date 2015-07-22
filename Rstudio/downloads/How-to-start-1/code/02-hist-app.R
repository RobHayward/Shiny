library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num", 
    label = "Choose a number", 
    value = 25, min = 1, max = 100),
  plotOutput("hist")
)

server <- function(input, output) {
      output$hist <- renderPlot({
        main = "Histogram of random numbers"
    hist(rnorm(input$num), main = main, xlab = "Number", ylab = "Frequency")
  })
}

shinyApp(ui = ui, server = server)

