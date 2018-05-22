#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# Name parts gathered from https://en.wikipedia.org/wiki/List_of_most_popular_given_names
  #prefix_pw<- c()
  #suffix_pw<- c()
  prefix_pw <- c("Hen","Wout","Ros","Wil","Lot","Ben","Mich","Le","Tob","Suz","Phil","Mar","Jan","Bern","Quin","Gabr","Alex","Dan")
  suffix_pw <- c("iette","er","ina","emijn","otta","jamin","iel","ander","ias","em","anne","emina","helm","iet","hard","to","ius")
  prefix_Eng <-c("Oliv","Georg","Har","Jac","Char","Amel","Emil","Isab","Jes")
  suffix_Eng <-c("er","ge","y","ob","ert","in","as","ia","ella","ica","ily","a")
  prefix_Ar <- c("Moh","Om","Ahm","Yous","Al","Abd","Sar","Fat","Sal","Thal")
  suffix_Ar <- c("amed","ar","ed","ouf","i","id","ima","ma","ia")
  prefix_Rus<-c("Alex","Serg","Dmit","Andr","Iv","Sof","Ann","Vikt","Olg","Nat","Tat")
  suffix_Rus<-c("ander","ei","ry","an","ail","ya","a","alia","iana")
  

# Define server logic
shinyServer(function(input, output) {
  
  generate_name <- eventReactive(input$goButton, { 
    # generate names
    prefix <- c()
    suffix <- c()
    
    if(input$pw){
     prefix <- c(prefix,prefix_pw)
      suffix <- c(suffix,suffix_pw)
      }
    if(input$English){
      prefix <- c(prefix,prefix_Eng)
      suffix <- c(suffix,suffix_Eng)
    }  
    if(input$Russian){
      prefix <- c(prefix,prefix_Rus)
      suffix <- c(suffix,suffix_Rus)
    }    
    if(input$Arabic){
      prefix <- c(prefix,prefix_Ar)
      suffix <- c(suffix,suffix_Ar)
    }
    name<-paste(sample(prefix,1),sample(suffix,1),sep="")
    print(name)
    })
  output$name <- renderText({
    generate_name()
    })
  })
