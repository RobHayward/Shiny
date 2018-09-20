# this is the work on the exercises
# https://www.r-exercises.com/2018/09/10/step-up-your-dashboard-with-shinydashboard-part-1-exercises/
library(shiny)
library(shinydashboard)

ui <- dashboardPage(
        skin = "black",
        title = "R-Exercises",
# the span allows some additional html tools to be used. 
		    header <- dashboardHeader(title = span("Practicing Shiny Dashboard", 
		                              style = "font-family: Tahomal; font-weight: bold"), 
		                              titleWidth = "300px"), 
		    sidebar <- dashboardSidebar(width = "300px",
		                                sidebarMenu(
		                                sidebarSearchForm(
		                                  textId = "search text", 
		                                  buttonId = "search_button", 
		                                  label = "What are you looking for?"
		                                ),
		                                	                               
		                                selectInput(
		                                  inputId = "plant", 
		                                  label = "Select Plant", 
		                                  choices = unique(CO2$Plant)
		                                ),
		                                
		                                menuItem(
		                                  text = span("Data", style = "font-size: 20px"), 
		                                  tabName = "data", 
		                                  icon = icon("database"), 
		                                  badgeLabel = "New", 
		                                  badgeColor = "yellow"
		                                ),
		                                
		                                menuItem(
		                                  text = span("About", style = "font-size: 20px"),
		                                  tabName = "about",
		                                  icon = icon("info-circle"), 
		                                  menuSubItem(text = "Licenses", 
		                                              tabName = "Licenses"),
		                                  menuSubItem(text = "Contact Us", 
		                                              tabName = "Contact us")
		                                )
		                                )), 
		    body <- dashboardBody()
)

server <- function(input, output, session){}

shinyApp(ui = ui, server = server)


