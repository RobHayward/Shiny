# ui.R
shinyUI(fluidPage(
  titlePanel("Survey Response"),
  sidebarLayout(
    sidebarPanel(
      helpText("Select country and question"),
    
      textInput("country1", 
                  label = "Choose first country to display",
                  value = c("US" =  "US", "MX" = "MX")),
                                  
      textInput("country2", 
                  label = "Choose second country to display",
                  value = c("MX" = "MX", "US" = "US")),
                          
      selectInput("question", 
                  label = "Select question",
                  choices = c("a" = "a", "b" = "b", "c" = "c"),
                  selected = "a")
    ),
    
  mainPanel(
  "Barplot of response", 
              plotOutput("plot1"),
        tableOutput("summary")  
          )
  )
))