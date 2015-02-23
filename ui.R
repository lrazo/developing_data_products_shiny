library(shiny)
shinyUI(
  pageWithSidebar(
  
    #Application title
    
    headerPanel("Data Products"),
    sidebarPanel(
      radioButtons("radio", label = h3("Select a Plot"),
                   choices = list("Plot 1" = 1, "Plot 2" = 2,
                                  "Plot 3" = 3),selected = 1)),
  
  mainPanel(
    plotOutput("plot1")
    )
))