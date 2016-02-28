library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Greener Pastures"),
  
  # Sidebar with a slider input for the number of bins

  sidebarLayout(
    
    
    sidebarPanel( 
      
      textInput("name", "Enter your first name", value ="",placeholder="Hello!", width="50%"),
                  
      helpText("Let us help you find a new home. Choose your criteria then click the <GO> button"),
      
      selectInput("demographic", 
                  label = "Choose your neighborhood",
                  choices = list("Rural", "Urban", "Suburb", "Agriculture",
                                 selected = "Urban")),
      selectInput("cost", 
                  label = "Choose Cost of Living Range",
                  choices = list("Low", "Medium", "High",
                  selected = "")),
      
      sliderInput("age", 
                  label = "Choose an Age Range:",
                  min = 20, max = 65, value = c(20, 65)),
      
      checkboxGroupInput("activity", "Activities:", selected = "cul",
                         c("Culture" = "cul",
                           "Outdoors" = "out",
                           "Social" = "soc",
                           "Employment" = "emp"))
    
  ),
   
    mainPanel ( 
      
         p(h4("Neighborhoods ") ),
        
         imageOutput("image1"),
         textOutput("name2"),
         actionButton("calc", "Go"),
         textOutput("text1"),
         textOutput("choice1")
        
         
              )
  )
))
