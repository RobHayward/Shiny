shinyUI(fluidPage(theme = "bootstrap.css",  
  titlePanel("Analysis of Unemployment and Inflation"), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Country", "Choose a Country", 
                  choices = countrySelect, 
                  selected = ""), 
      
      plotOutput("resid"), 
      
              h3("Residuals"), 
              br(),
              ("If the residuals look random, that is encouraging for the 
               model beause the residuals have all the other factors 
                that may affect unemployemnt. If these factors are random, 
                they will cancel each other out and their omission is not 
                important.  However, if they move in trends or tned to be
                positive in one place and negative in another, that could
                be a problem because it suggests that something important
                is missing.")
      
          ),
    
    mainPanel(plotOutput("ts"), 
              
              h3("Two tests for model quality"), 
              br(),
              strong(textOutput("text1")),
              ("The R-squared records how much of the variation in 
               inflation is explained by model that uses unemployment."),
              br(), 
              strong(textOutput("text2")),
              ("This shows the relationship betweeebn unemployment and 
               inflation.  Phillips says that it will be negative."),
              br(),
              strong(textOutput("text3")),
              ("This gives some indication of the likely variation in the 
              estimate of beta if there were different samples.  Confidence
              intervals that span zero suggest that the actual relationship
              could easily be zero.")
              )
    
  )
  # Mot sure why this does not work. 
  
))