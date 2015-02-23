library(shiny)

source("helpers.R", local = TRUE)

shinyServer(
  function(input,output){    
    output$plot1 <- renderPlot({
      if(input$radio == 1) print(plot1())
      else if(input$radio == 2) print(plot2())
      else if(input$radio == 3) print(plot3())
    })
  }
)