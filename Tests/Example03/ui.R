library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Dispersion of data"),
  
  # Sidebar with controls to select the variable to plot against
  # mpg and to specify whether outliers should be included
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Variable:",
                  c("Unemployment" = "Unemployment",
                    "Inflation" = "Inflation")),
      selectInput("country", "Country",
                  c("Australia" = "Australia",
                    "Germany" = "Germany")),
      
      
      checkboxInput("outliers", "Show outliers", FALSE)
    ),
    
    # Show the caption and plot of the requested variable against
    # mpg
    mainPanel(
    
      
      plotOutput("myPlot")
    )
  )
))