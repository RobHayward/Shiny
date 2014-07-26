# ui.R

shinyUI(fluidPage(
  titlePanel("Survey Response"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select country and question"),
      
      textInput("country", 
                  label = "Choose a country to display",
                  value = c("US", "MX"),
      
      selectInput("question", 
                  label = "Select question",
                  choices = c("a", "b", "c"),
                  selected = "how_much")
    ),
    
    mainPanel("Barplot of response", 
              plotOutput("plot1")
              )
  )
))