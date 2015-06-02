require(shiny)

function(input, output){
  
  simHist <- renderPlot({
    
    hist("simHist")
  })
  
 # This does not work.   
}