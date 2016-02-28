library(shiny)




shinyServer(function(input, output) {

  
  df1 <- eventReactive(input$calc, {
    
    
    if (input$cost == 'Low' && input$activity == 'emp') "Topeka KS, "
    
    else if (input$cost == 'Medium' && input$activity == 'emp') "Casper WY, "
    
    else if (input$cost == 'High' && input$activity == 'emp') "Des Moines Iowa, San Francisco"
    
    else if (input$cost == 'Low' && input$activity == 'soc') "Charleston SC"
    else if (input$cost == 'Medium' && input$activity == 'soc') "Raleigh/Durham NC, Norfolk VA"
    else if (input$cost == 'High' && input$activity == 'soc') "San Diego CA, Honolulu HI"
    
    else if (input$cost == 'Low' && input$demographic == "Rural") "City of Astoria OR, Franklin TN"
    
    else if (input$cost == 'Low' && input$demographic == 'Agriculture' && input$activity == 'out') "Topeka KS"
  
    else if (input$cost == 'Medium' && input$demographic == 'Rural' && input$activity == 'cul') "Fort Wayne IN"
    
    else if (input$cost == 'Medium' && input$demographic == 'Suburb' && input$activity == 'out') "Rochester MN, "
    
    else if (input$cost == 'High' && input$activity[1]== "out" )  "Denver Colorado, Seattle WA"
    
    else if(input$cost == 'High' && input$activity == 'cul' )  'New York City NY, Washington DC, San Franciso CA'
    
    
    
    else  "None recommended: To further fine-tune your search please check out our full Greener Pastures app!"
  })
  
 
  output$choice1 <- renderText({
    df1()
  })
    
  
  output$image1 <- renderImage({
    if (is.null(input$demographic))
      return(NULL)
    
    if (input$demographic == "Rural") {
      return(list(
        src = "www/rural.jpg",
        contentType = "image/jpeg",
        alt = "Rural"
      ))
    } else if (input$demographic == "Urban") {
      return(list(
        src = "www/urban.jpg",
        filetype = "image/jpeg",
        alt = "Urban"
      ))
      
    } else if (input$demographic == "Metro-Suburb") {
      return(list(
        src = "www/metro.jpg",
        filetype = "image/jpeg",
        alt = "Metro-Suburb"
      ))
      
      
    } else if (input$demographic == "Agriculture") {
      return(list(
        src = "www/agri.jpg",
        filetype = "image/jpeg",
        alt = "Agriculture"
      ))
      
    }
    
  }, deleteFile = FALSE)
  output$name2   <- renderText({input$name     })
  output$text1 <- renderText({ "Suggestions: "})
 
 
})











