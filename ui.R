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
  titlePanel("Name Generator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      # Input: Selector for choosing dataset ----
      #selectInput(inputId = "dataset",
      #            label = "Choose a dataset:",
      #            choices = c("Plomp", "Winkler")),
      checkboxInput("pw", "Plomp-Winkler", value=FALSE), 
      checkboxInput("English", "English", value=FALSE),
      checkboxInput("Russian", "Russian", value=FALSE),
      checkboxInput("Arabic", "Arabic", value=FALSE),

      actionButton("goButton", "Go!"),
      helpText("Press the button to generate a name made from parts of other common names")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h1(textOutput("name"))
    )
  )
))
