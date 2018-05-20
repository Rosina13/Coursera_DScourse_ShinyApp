#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
#define data
  x_lin<-c(1:100)
  y_lin<-x_lin
  x_exp<-c(1:100)
  y_exp<-(x_exp)^2

# Define server logic required to draw plots
shinyServer(function(input, output) {
  
    plotlin <- reactive({
      input$linear
      if (input$linear){
        return(plot(y_lin~x_lin, 
                    main="Linear function (y~x)",
                    xlab="x",
                    ylab="y",
                    col="blue"))
      } else {
        return(NULL)
      }
    })

    plotexp <- reactive({
      input$exponential
      if (input$exponential){
        return(plot(y_exp~x_exp,
                    main="Exponential function (y~x^2)",
                    xlab="x",
                    ylab="y",
                    col="green"))
      } else {
        return(NULL)
      }
    })   
    
    output$plotgraph1 = renderPlot({plotlin()})
    output$plotgraph2 = renderPlot({plotexp()})
    
  })
  

