library(shiny) # Load the Shiny library

shinyServer(function(input, output) {

  output$thePlot <- renderImage({

    outfile <- tempfile(fileext='.png')
    
    png(outfile, width=400, height=400)
    hist(rnorm(input$n), col = "orange", main = outfile, cex.main = .75)
    dev.off()
    
    # Return a list
    list(src = outfile, alt = "I just created this plot")
  }, deleteFile = TRUE)

  output$mangoLogo <- renderImage({ list(src = "D:/Mango/Images/newlogo.png") }, deleteFile = FALSE)

})

