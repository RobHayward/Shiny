library(shiny)

# Define UI for random distribution application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Tabsets"),
  
  # Sidebar with controls to select the random distribution type
  # and number of observations to generate. Note the use of the
  # br() element to introduce extra vertical spacing
  sidebarLayout(
    sidebarPanel(
      selectInput("Select", "Variable",
                   c("Inflation" = "Inflation",
                     "Unemployment" = "Unemployment"), 
                  selected = "Inflation"),
       selectInput("country", "Select Country", choices = c("Australia", 
                      "Germany"), selected = "Australia") 
       ),
    
    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Plot", plotOutput("plot")), 
                  tabPanel("Summary", verbatimTextOutput("summary")), 
                  tabPanel("Table", tableOutput("table"))
      )
    )
  )
))