shinyUI(fluidPage(
  titlePanel("Dota data"),
  
  sidebarLayout(
    
  sidebarPanel(
  
  selectInput("country1", "Select Country:", 
            choices = countries, 
            selected = "US" ), 
  
  selectInput("country2", "Select Country:", 
              choices = countries, 
              selected = "MX" ), 
  
  selectInput("question", "Select question:", 
              choices = questions) 
                ),

  mainPanel(
    textOutput("text1"), 
    plotOutput("plot")
    
  ))
  ))