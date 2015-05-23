library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Data Analysis"),
  
  # Sidebar with controls to select a dataset and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
        selectInput("variable", "Choose a variable:", 
                  choices = c("Unemployment", "Inflation")),
      
      numericInput("datmin", label = "Minimum date", 
                  value = 1980, min = 1980, max = 2014),
      numericInput("datmax", label = "Maximum date", 
                   value = 2014, min = 1980, max = 2014)
      
    ),
    
    # Show a summary of the dataset and an HTML table with the 
    # requested number of observations
    mainPanel(
      h2("Summary"),
      verbatimTextOutput("summary"),
      # http://shiny.rstudio.com/articles/datatables.html
      # Information on the dataTableOutput 
      
      dataTableOutput("view")
    )
  )
))