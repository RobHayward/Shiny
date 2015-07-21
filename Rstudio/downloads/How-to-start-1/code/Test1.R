library(shiny)
ui <- fluidPage(
  selectInput(inputId = "Country1", label = "Country1", selected = "Germany", 
              choices = c("Germany", "Australia")),
  selectInput(inputId = "Country2", label = "Country2", selected = "Australia", 
              choices = c("Germany", "Australia")), 
  plotOutput("plot"))

server <- function(input, output){
  head = "Scattergram of unemployment and inflation"
  output$plot <- renderPlot({plot(input$Country1, input$Country2, main = head
                                  )})
}
  da <- data.frame(Germany = rnorm(50), Australia = rnorm(50))
shinyApp(ui = ui, server = server)