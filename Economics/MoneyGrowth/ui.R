library(shiny)
shinyUI(fluidPage(
 titlePanel("Growth rates"),
 sidebarLayout(
   sidebarPanel(("Sidebar panel"), 
          numericInput("tech", "Select technology start", value = 0.5, 
                       min = 0.0, max = 1, step = 0.1), 
          numericInput("Lab", "Select labour", value = 0.5, min = 0.0, 
                       max = 1, step = 0.1), 
          numericInput("Kap", "Select capital", value = 0.5, min = 0.0, 
                       max = 1, step = 0.1), 
          h5("The production function takes the form")
   ),
   mainPanel(("main panel"),
h1("The evolution of GDP"),
h5("Change the parameters to analyse different growth rates. This is a Cobb-Douglas 
   production function.  "), 
plotOutput("plot")
 )
 )
))