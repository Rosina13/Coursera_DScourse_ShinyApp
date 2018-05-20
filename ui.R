#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Types of functions"),
  
  # Sidebar 
  sidebarLayout(
    sidebarPanel(
       checkboxInput("linear", "linear", value=FALSE), 
        checkboxInput("exponential", "exponential", value=FALSE)
    ),
    
    # Show a plot 
    mainPanel(
              fluidRow(
                splitLayout(style = "border: 1px solid silver:", cellWidths = c(300,300), 
                            plotOutput("plotgraph1"), 
                            plotOutput("plotgraph2")
                )
              )
    )
  )
))
